-- PostgreSQL.9.2 PostgreSQL
SELECT
	COUNT(CASE
		WHEN t."Status" = 3 THEN 1
		ELSE NULL
	END)
FROM
	"GroupByConstantKeyTable" t
WHERE
	t."MyOtherId" = 12
LIMIT 1

