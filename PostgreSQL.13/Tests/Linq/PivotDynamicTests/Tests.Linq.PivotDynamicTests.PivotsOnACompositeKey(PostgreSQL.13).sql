-- PostgreSQL.13 PostgreSQL12
SELECT
	g_1."Category",
	g_1."Region",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010)
FROM
	"RegionSales" g_1
GROUP BY
	g_1."Category",
	g_1."Region"

