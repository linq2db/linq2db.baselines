-- PostgreSQL.15 PostgreSQL12
SELECT
	u."Key_1"
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000",
			g_1."Category" as "Key_1"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) u
WHERE
	u."Y2000" IS NOT NULL AND Floor(u."Y2000")::Int = 10

