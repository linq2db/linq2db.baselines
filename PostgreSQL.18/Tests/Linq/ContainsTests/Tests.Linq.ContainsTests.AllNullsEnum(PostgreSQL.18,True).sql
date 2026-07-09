-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IS NULL

-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IS NOT NULL

