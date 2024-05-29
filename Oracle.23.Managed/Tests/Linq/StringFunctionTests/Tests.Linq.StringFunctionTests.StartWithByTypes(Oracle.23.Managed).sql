BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StringTypesTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "StringTypesTable"
		(
			"Id"             Int          NOT NULL,
			"CharColumn"     Char(50)         NULL,
			"NCharColumn"    NChar(50)        NULL,
			"VarCharColumn"  VarChar(50)      NULL,
			"NVarCharColumn" VarChar2(50)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "StringTypesTable" ("Id", "CharColumn", "NCharColumn", "VarCharColumn", "NVarCharColumn") VALUES (1,'someString','someString','someString','someString')
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @str Varchar2(5) -- String
SET     @str = 'some%'
DECLARE @str_1 Varchar2(5) -- String
SET     @str_1 = 'some%'
DECLARE @str_2 Varchar2(5) -- String
SET     @str_2 = 'some%'
DECLARE @str_3 Varchar2(5) -- String
SET     @str_3 = 'some%'

SELECT
	t."Id",
	t."CharColumn",
	t."NCharColumn",
	t."VarCharColumn",
	t."NVarCharColumn"
FROM
	"StringTypesTable" t
WHERE
	t."CharColumn" LIKE :str ESCAPE '~' AND
	t."NCharColumn" LIKE :str_1 ESCAPE '~' AND
	t."VarCharColumn" LIKE :str_2 ESCAPE '~' AND
	t."NVarCharColumn" LIKE :str_3 ESCAPE '~'

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StringTypesTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

