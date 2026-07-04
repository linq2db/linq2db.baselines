-- PostgreSQL.19 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" IN (NULL, NULL)

-- PostgreSQL.19 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Int" NOT IN (NULL, NULL)

