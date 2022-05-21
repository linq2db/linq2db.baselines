BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"     Int           NOT NULL,
			A        Int               NULL,
			B        Int               NULL,
			"EnumA"  VarChar(1)        NULL,
			"EnumB"  VarChar(1)        NULL,
			"CEnumA" VarChar(4000)     NULL,
			"CEnumB" VarChar(4000)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "Src" ("Id", A, B, "EnumA", "EnumB", "CEnumA", "CEnumB") VALUES (100,NULL,NULL,NULL,NULL,NULL,NULL)
	INTO "Src" ("Id", A, B, "EnumA", "EnumB", "CEnumA", "CEnumB") VALUES (101,NULL,1,NULL,'A',NULL,'___One___')
	INTO "Src" ("Id", A, B, "EnumA", "EnumB", "CEnumA", "CEnumB") VALUES (110,1,NULL,'A',NULL,'___One___',NULL)
	INTO "Src" ("Id", A, B, "EnumA", "EnumB", "CEnumA", "CEnumB") VALUES (111,1,1,'A','A','___One___','___One___')
	INTO "Src" ("Id", A, B, "EnumA", "EnumB", "CEnumA", "CEnumB") VALUES (112,1,2,'A','B','___One___','___Two___')
	INTO "Src" ("Id", A, B, "EnumA", "EnumB", "CEnumA", "CEnumB") VALUES (121,2,1,'B','A','___Two___','___One___')
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	x."Id"
FROM
	"Src" x
WHERE
	(x."EnumA" = x."EnumB" OR x."EnumA" IS NULL AND x."EnumB" IS NULL)
ORDER BY
	x."Id"

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

