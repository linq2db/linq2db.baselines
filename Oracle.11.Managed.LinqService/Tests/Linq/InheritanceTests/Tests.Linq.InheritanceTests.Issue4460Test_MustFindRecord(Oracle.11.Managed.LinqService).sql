BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4460Table"';
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
		CREATE TABLE "Issue4460Table"
		(
			"Id"      Int          NOT NULL,
			"Code"    VarChar(255)     NULL,
			"Name"    VarChar(255)     NULL,
			"Surname" VarChar(255)     NULL
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Code Varchar2(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name Varchar2(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname Varchar2(5) -- String
SET     @Surname = 'Black'

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
VALUES
(
	:Id,
	:Code,
	:Name,
	:Surname
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Code",
	t1."Id",
	t1."Name",
	t1."Surname"
FROM
	"Issue4460Table" t1
WHERE
	t1."Code" = 'GrandChild' AND t1."Code" IS NOT NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4460Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

