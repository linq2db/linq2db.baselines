BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FeatureTable"';
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
		CREATE TABLE "FeatureTable"
		(
			"Id"       Int     NOT NULL,
			"One"      Int         NULL,
			"Zero"     Int         NULL,
			"Null"     Int         NULL,
			"True"     Char(1)     NULL,
			"False"    Char(1)     NULL,
			"BoolNull" Char(1)     NULL
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
	INTO "FeatureTable" ("Id", "One", "Zero", "Null", "True", "False", "BoolNull") VALUES (1,1,0,NULL,1,0,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."One", r."One", 0, 1) = 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."Zero", r."Zero", 0, 1) = 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."Null", r."Null", 0, 1) = 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."One", r."Zero", 0, 1) = 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."One", r."Null", 0, 1) = 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."Zero", r."Null", 0, 1) = 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."One", r."One", 0, 1) <> 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."Zero", r."Zero", 0, 1) <> 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."Null", r."Null", 0, 1) <> 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."One", r."Zero", 0, 1) <> 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."One", r."Null", 0, 1) <> 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	DECODE(r."Zero", r."Null", 0, 1) <> 0

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FeatureTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

