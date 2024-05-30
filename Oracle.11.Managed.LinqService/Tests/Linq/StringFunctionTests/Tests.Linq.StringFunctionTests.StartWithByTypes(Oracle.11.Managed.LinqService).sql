BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StringTypesTable"';
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
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @CharColumn Char(10) -- AnsiStringFixedLength
SET     @CharColumn = 'someString'
DECLARE @NCharColumn Char(10) -- StringFixedLength
SET     @NCharColumn = 'someString'
DECLARE @VarCharColumn Varchar2(10) -- String
SET     @VarCharColumn = 'someString'
DECLARE @NVarCharColumn NVarchar2(10) -- String
SET     @NVarCharColumn = 'someString'

INSERT INTO "StringTypesTable"
(
	"Id",
	"CharColumn",
	"NCharColumn",
	"VarCharColumn",
	"NVarCharColumn"
)
VALUES
(
	:Id,
	:CharColumn,
	:NCharColumn,
	:VarCharColumn,
	:NVarCharColumn
)

BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "StringTypesTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

