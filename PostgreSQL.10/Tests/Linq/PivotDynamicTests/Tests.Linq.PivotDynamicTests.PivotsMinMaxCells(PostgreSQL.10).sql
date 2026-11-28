-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	g_1."Category",
	MIN(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	MAX(g_1."Amount") FILTER (WHERE g_1."Year" = 2000)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

