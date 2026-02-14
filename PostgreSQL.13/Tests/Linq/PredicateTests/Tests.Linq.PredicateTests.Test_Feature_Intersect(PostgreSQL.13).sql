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
			r."Null" as "Null_1"
		INTERSECT
		SELECT
			r."Null" as "Null_1"
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
			r."Zero" as "One"
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
			r."Null" as "One"
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
			r."Null" as "Zero"
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
			r."Null" as "Null_1"
		INTERSECT
		SELECT
			r."Null" as "Null_1"
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
			r."Zero" as "One"
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
			r."Null" as "One"
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
			r."Null" as "Zero"
	)

