BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestFolder"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TestFolder"
		(
			"Id"       Raw(16)      NOT NULL,
			"Label"    VarChar(255)     NULL,
			"ParentId" Raw(16)          NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Raw(16) -- Binary
SET     @Id = HEXTORAW('208D6125C333664ABC308C34E4A0141E')

INSERT INTO "TestFolder"
(
	"Id",
	"Label"
)
WITH CTE ("Id", "Label", "ParentId")
AS
(
	SELECT
		c_1."Id",
		c_1."Label",
		c_1."ParentId"
	FROM
		"TestFolder" c_1
	WHERE
		c_1."ParentId" IS NOT NULL
)
SELECT
	:Id,
	parent."Label" || '/' || child."Label"
FROM
	CTE child
		INNER JOIN "TestFolder" parent ON child."ParentId" = parent."Id"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestFolder"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

