-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IS NOT NULL

