-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

-- Oracle.19.Managed Oracle.Managed Oracle12

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

