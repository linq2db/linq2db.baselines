-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	x."Year"
FROM
	"Sales" x

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010)
FROM
	"Sales" g_1
GROUP BY
	g_1."Category"

