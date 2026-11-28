-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010) > 16

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Key_1",
	r."Y2000",
	r."Y2010"
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000",
			g_1."Category" as "Key_1",
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010) as "Y2010"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) r
ORDER BY
	r."Y2000"

