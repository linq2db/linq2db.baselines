-- PostgreSQL.11 PostgreSQL
SELECT DISTINCT
	x."Year"
FROM
	"Sales" x
ORDER BY
	x."Year"

-- PostgreSQL.11 PostgreSQL
SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010)
FROM
	"Sales" g_1
GROUP BY
	g_1."Category"

