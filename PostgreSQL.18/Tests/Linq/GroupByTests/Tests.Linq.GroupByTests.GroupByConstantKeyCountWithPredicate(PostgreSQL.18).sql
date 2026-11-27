-- PostgreSQL.18 PostgreSQL12
SELECT
	COUNT(*) FILTER (WHERE t."Status" = 3)
FROM
	"GroupByConstantKeyTable" t
WHERE
	t."MyOtherId" = 12
LIMIT 1

