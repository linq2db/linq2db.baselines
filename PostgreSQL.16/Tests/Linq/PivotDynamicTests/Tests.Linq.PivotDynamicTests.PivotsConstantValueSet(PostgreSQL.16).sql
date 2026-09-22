-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

