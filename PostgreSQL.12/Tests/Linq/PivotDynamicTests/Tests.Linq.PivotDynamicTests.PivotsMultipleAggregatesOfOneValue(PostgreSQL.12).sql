-- PostgreSQL.12 PostgreSQL12
SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	COUNT(*) FILTER (WHERE g_1."Year" = 2000)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

