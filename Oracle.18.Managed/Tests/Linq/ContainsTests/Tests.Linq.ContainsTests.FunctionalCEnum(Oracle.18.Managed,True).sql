BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Src" ("Id", "Int", "Enum", "CEnum") VALUES (1,NULL,NULL,NULL)
	INTO "Src" ("Id", "Int", "Enum", "CEnum") VALUES (2,2,'TWO','___Value2___')
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'
DECLARE @In_2 Varchar2(12) -- String
SET     @In_2 = '___Value4___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" IN (:In_1) OR s."CEnum" IS NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @In_1 Varchar2(12) -- String
SET     @In_1 = '___Value3___'
DECLARE @In_2 Varchar2(12) -- String
SET     @In_2 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."CEnum" IN (:In_1, :In_2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @NotIn Varchar2(12) -- String
SET     @NotIn = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" NOT IN (:NotIn) AND s."CEnum" IS NOT NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @NotIn Varchar2(12) -- String
SET     @NotIn = '___Value3___'
DECLARE @NotIn_1 Varchar2(12) -- String
SET     @NotIn_1 = '___Value2___'

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."CEnum" NOT IN (:NotIn, :NotIn_1) OR s."CEnum" IS NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

