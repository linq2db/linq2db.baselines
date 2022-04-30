﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"    Int         NOT NULL,
			"Int"   Int             NULL,
			"Enum"  VarChar(5)      NULL,
			"CEnum" VarChar(20)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO "Src" ("Id", "Int", "Enum", "CEnum") VALUES (1,NULL,NULL,NULL)
	INTO "Src" ("Id", "Int", "Enum", "CEnum") VALUES (2,2,'TWO','___Value2___')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @CEnum Varchar2 -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 Varchar2 -- String
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."CEnum" IN (:CEnum, :CEnum_1)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @CEnum Varchar2 -- String
SET     @CEnum = NULL
DECLARE @CEnum_1 Varchar2 -- String
SET     @CEnum_1 = NULL

SELECT
	Count(*)
FROM
	"Src" s
WHERE
	s."CEnum" NOT IN (:CEnum, :CEnum_1)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

