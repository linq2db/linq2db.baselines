-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT NULL

-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT NULL

-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NULL

-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NULL

