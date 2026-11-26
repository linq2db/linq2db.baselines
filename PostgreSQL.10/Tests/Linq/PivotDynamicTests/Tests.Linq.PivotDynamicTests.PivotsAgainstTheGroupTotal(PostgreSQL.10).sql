-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	g_2."Key_1",
	g_2."Y2000" - g_2."Y2000_1",
	g_2."Y2000" - g_2."Y2010"
FROM
	(
		SELECT
			g_1."Category" as "Key_1",
			SUM(g_1."Amount") as "Y2000",
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000_1",
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010) as "Y2010"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) g_2

