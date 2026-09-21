-- PostgreSQL.18 PostgreSQL12
SELECT DISTINCT
	x."Year"
FROM
	"Sales" x

-- PostgreSQL.18 PostgreSQL12
SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010)
FROM
	"Sales" g_1
GROUP BY
	g_1."Category"

