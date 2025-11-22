-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."One"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Zero"
		INTERSECT
		SELECT
			r."Zero"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Null"
		INTERSECT
		SELECT
			r."Null"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."Zero"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."Null"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	EXISTS(
		SELECT
			r."Zero"
		INTERSECT
		SELECT
			r."Null"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."One"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Zero"
		INTERSECT
		SELECT
			r."Zero"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Null"
		INTERSECT
		SELECT
			r."Null"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."Zero"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."One"
		INTERSECT
		SELECT
			r."Null"
	)

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	NOT EXISTS(
		SELECT
			r."Zero"
		INTERSECT
		SELECT
			r."Null"
	)

