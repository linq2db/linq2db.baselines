-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IS NULL

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IS NOT NULL

