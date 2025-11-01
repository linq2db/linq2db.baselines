-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") = FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Zero") = FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Null" = r."Null") = FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Zero") = FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Null") = FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Null") = FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") <> FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Zero") <> FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Null" = r."Null") <> FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Zero") <> FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Null") <> FALSE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Null") <> FALSE

