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
			r."Null" as "Null_1"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null" as "Null_1"
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
			r."Zero" as "One"
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
			r."Null" as "One"
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
			r."Null" as "Zero"
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
			r."Null" as "Null_1"
		FROM SYS.DUAL
		INTERSECT
		SELECT
			r."Null" as "Null_1"
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
			r."Zero" as "One"
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
			r."Null" as "One"
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
			r."Null" as "Zero"
		FROM SYS.DUAL
	)

