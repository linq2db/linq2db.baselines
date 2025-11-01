-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IN (NULL, NULL)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" NOT IN (NULL, NULL)

