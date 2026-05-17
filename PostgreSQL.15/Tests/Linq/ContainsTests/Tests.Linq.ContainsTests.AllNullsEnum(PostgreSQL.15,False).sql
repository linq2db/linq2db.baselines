-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" IN (NULL, NULL)

-- PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."Enum" NOT IN (NULL, NULL)

