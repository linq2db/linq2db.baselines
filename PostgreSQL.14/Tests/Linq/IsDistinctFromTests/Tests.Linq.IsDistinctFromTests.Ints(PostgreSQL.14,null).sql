-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Src" s

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS NOT NULL

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	1 = 0

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableInt" IS NULL

