BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Int"            Int          NOT NULL,
			"NullableInt"    Int              NULL,
			"String"         VarChar(255)     NULL,
			"NullableString" VarChar(255)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Src" ("Int", "NullableInt", "String", "NullableString") VALUES (2,2,'abc','abc')
	INTO "Src" ("Int", "NullableInt", "String", "NullableString") VALUES (3,NULL,'def',NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."String", 'abc')
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."String", 'xyz')
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."String", NULL)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableString", 'abc')
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableString", 'xyz')
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableString", NULL)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

