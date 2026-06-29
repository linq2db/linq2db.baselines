-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IN (NULL, NULL)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" NOT IN (NULL, NULL)

