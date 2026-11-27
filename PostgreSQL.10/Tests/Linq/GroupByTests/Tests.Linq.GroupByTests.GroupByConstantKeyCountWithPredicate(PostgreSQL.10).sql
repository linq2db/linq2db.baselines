-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	COUNT(*) FILTER (WHERE t."Status" = 3)
FROM
	"GroupByConstantKeyTable" t
WHERE
	t."MyOtherId" = 12
LIMIT 1

