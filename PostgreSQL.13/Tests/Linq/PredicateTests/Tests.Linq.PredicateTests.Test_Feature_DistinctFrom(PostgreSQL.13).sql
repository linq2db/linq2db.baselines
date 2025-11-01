-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS DISTINCT FROM r."One"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Zero" IS DISTINCT FROM r."Zero"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Null" IS DISTINCT FROM r."Null"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS DISTINCT FROM r."Zero"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS DISTINCT FROM r."Null"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Zero" IS DISTINCT FROM r."Null"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS NOT DISTINCT FROM r."One"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Zero" IS NOT DISTINCT FROM r."Zero"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Null" IS NOT DISTINCT FROM r."Null"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS NOT DISTINCT FROM r."Zero"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS NOT DISTINCT FROM r."Null"

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Zero" IS NOT DISTINCT FROM r."Null"

