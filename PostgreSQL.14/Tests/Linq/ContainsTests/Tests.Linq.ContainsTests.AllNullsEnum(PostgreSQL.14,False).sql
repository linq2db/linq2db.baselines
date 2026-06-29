-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IN (NULL, NULL)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" NOT IN (NULL, NULL)

