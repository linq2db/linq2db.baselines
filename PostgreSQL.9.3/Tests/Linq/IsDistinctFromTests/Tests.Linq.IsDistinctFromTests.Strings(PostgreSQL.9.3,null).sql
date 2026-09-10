-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NOT NULL

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NOT NULL

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."String" IS NULL

-- PostgreSQL.9.3 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."NullableString" IS NULL

