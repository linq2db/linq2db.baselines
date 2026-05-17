-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IS NULL

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IS NOT NULL

