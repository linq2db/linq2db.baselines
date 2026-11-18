-- PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT NULL

-- PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT NULL

-- PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NULL

-- PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NULL

