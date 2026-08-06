-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IS NULL

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IS NOT NULL

