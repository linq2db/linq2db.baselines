-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IS NULL

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IS NOT NULL

