-- PostgreSQL.9.3 PostgreSQL
SELECT
	g_1."Category",
	COUNT(DISTINCT CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END),
	COUNT(CASE
		WHEN g_1."Year" = 2000 THEN 1
		ELSE NULL
	END)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

