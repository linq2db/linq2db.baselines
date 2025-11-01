-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") = TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Zero") = TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Null" = r."Null") = TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Zero") = TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Null") = TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Null") = TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."One") <> TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Zero") <> TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Null" = r."Null") <> TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Zero") <> TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."One" = r."Null") <> TRUE

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	(r."Zero" = r."Null") <> TRUE

