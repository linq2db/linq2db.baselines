BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FeatureTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "FeatureTable" ("Id", "One", "Zero", "Null", "True", "False", "BoolNull") VALUES (1,1,0,NULL,1,0,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."One"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Zero"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Zero"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Null"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Zero"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Zero"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."One"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Zero"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Zero"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Null"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Zero"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Zero"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null"
		FROM SYS.DUAL
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "FeatureTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

