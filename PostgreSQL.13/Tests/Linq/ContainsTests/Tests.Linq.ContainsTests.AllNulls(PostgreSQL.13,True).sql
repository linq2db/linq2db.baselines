-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IS NULL

-- PostgreSQL.13 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IS NOT NULL

