-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") IS FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Zero") IS FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Null" = r."Null") IS FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Zero") IS FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Null") IS FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Null") IS FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") IS NOT FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Zero") IS NOT FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Null" = r."Null") IS NOT FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Zero") IS NOT FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Null") IS NOT FALSE

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Null") IS NOT FALSE

