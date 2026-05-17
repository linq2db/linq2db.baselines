-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IS NULL

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Src" s
WHERE
	s."CEnum" IS NOT NULL

