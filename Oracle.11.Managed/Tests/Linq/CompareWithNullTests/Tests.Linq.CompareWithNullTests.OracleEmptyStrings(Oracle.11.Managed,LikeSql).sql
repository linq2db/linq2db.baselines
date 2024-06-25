BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
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
		CREATE TABLE "Src"
		(
			"Id"     Int          NOT NULL,
			A        Int              NULL,
			B        Int              NULL,
			"EnumA"  VarChar(1)       NULL,
			"EnumB"  VarChar(1)       NULL,
			"CEnumA" Int              NULL,
			"CEnumB" Int              NULL,
			"Text"   VarChar(255)     NULL
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
	INTO "Src" ("Id", A, B, "EnumA", "EnumB", "CEnumA", "CEnumB", "Text") VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,'abc')
	INTO "Src" ("Id", A, B, "EnumA", "EnumB", "CEnumA", "CEnumB", "Text") VALUES (2,NULL,NULL,NULL,NULL,NULL,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."Id"
FROM
	"Src" x
WHERE
	x."Text" IS NULL AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @p Varchar2 -- String
SET     @p = ''

SELECT
	x."Id"
FROM
	"Src" x
WHERE
	x."Text" = :p AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

