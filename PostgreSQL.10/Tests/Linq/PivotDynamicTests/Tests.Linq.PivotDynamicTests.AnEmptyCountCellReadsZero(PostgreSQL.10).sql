-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	g_1."Category",
	COUNT(*) FILTER (WHERE g_1."Year" = 2000),
	COUNT(*) FILTER (WHERE g_1."Year" = 2010)
FROM
	"StrictSales" g_1
GROUP BY
	g_1."Category"

