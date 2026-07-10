-- PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IS NULL

-- PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IS NOT NULL

