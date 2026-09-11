-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT NULL

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT NULL

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NULL

-- PostgreSQL.11 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NULL

