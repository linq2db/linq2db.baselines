﻿BeforeExecute
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

INSERT ALL
	INTO "StringTypesTable" ("Id", "CharColumn", "NCharColumn", "VarCharColumn", "NVarCharColumn") VALUES (1,'someString','someString','someString','someString')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @str_4 Char(5) -- AnsiStringFixedLength
SET     @str_4 = 'some%'
DECLARE @str_5 Char(5) -- StringFixedLength
SET     @str_5 = 'some%'
DECLARE @str_6 Varchar2(5) -- String
SET     @str_6 = 'some%'
DECLARE @str_7 NVarchar2(5) -- String
SET     @str_7 = 'some%'

SELECT
	t."Id",
	t."CharColumn",
	t."NCharColumn",
	t."VarCharColumn",
	t."NVarCharColumn"
FROM
	"StringTypesTable" t
WHERE
	t."CharColumn" LIKE :str_4 ESCAPE '~' AND
	t."NCharColumn" LIKE :str_5 ESCAPE '~' AND
	t."VarCharColumn" LIKE :str_6 ESCAPE '~' AND
	t."NVarCharColumn" LIKE :str_7 ESCAPE '~'

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

