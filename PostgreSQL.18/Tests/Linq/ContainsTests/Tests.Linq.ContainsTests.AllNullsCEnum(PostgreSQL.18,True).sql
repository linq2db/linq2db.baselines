-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IS NULL

-- PostgreSQL.18 PostgreSQL13

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IS NOT NULL

