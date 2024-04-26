BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
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
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Src" ("Int", "NullableInt", "String", "NullableString") VALUES (2,2,'abc','abc')
	INTO "Src" ("Int", "NullableInt", "String", "NullableString") VALUES (3,NULL,'def',NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."Int", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."Int", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."Int", NULL)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableInt", 2)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableInt", 4)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	NULLIF(s."NullableInt", NULL)
FROM
	"Src" s
ORDER BY
	s."Int"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

