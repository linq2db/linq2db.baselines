-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IN (NULL, NULL)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" NOT IN (NULL, NULL)

