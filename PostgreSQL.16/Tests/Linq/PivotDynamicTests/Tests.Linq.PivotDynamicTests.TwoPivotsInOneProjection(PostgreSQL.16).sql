-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010),
	SUM(g_1."Amount") FILTER (WHERE g_1."Region" = 'EU'),
	SUM(g_1."Amount") FILTER (WHERE g_1."Region" = '2000')
FROM
	"RegionSales" g_1
GROUP BY
	g_1."Category"

