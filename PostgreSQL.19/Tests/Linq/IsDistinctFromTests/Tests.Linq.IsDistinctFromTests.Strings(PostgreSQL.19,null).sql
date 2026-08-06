-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NULL

