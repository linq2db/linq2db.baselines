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

INSERT INTO "TestFolder"
(
	"Id",
	"Label"
)
WITH CTE ("ParentId", "Label")
AS
(
	SELECT
		c_1."ParentId",
		c_1."Label"
	FROM
		"TestFolder" c_1
	WHERE
		c_1."ParentId" IS NOT NULL
)
SELECT
	HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11'),
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

