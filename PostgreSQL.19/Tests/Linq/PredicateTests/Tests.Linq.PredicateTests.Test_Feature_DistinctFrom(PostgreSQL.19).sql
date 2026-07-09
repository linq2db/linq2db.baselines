-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS DISTINCT FROM r."One"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Zero" IS DISTINCT FROM r."Zero"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Null" IS DISTINCT FROM r."Null"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS DISTINCT FROM r."Zero"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS DISTINCT FROM r."Null"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Zero" IS DISTINCT FROM r."Null"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS NOT DISTINCT FROM r."One"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Zero" IS NOT DISTINCT FROM r."Zero"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Null" IS NOT DISTINCT FROM r."Null"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS NOT DISTINCT FROM r."Zero"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."One" IS NOT DISTINCT FROM r."Null"

-- PostgreSQL.19 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"FeatureTable" r
WHERE
	r."Zero" IS NOT DISTINCT FROM r."Null"

