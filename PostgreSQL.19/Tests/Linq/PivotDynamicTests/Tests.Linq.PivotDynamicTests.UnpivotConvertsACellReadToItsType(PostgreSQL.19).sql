-- PostgreSQL.19 PostgreSQL12
SELECT
	row_1."Key_1",
	Floor(row_1."Y2000")::Int
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000",
			g_1."Category" as "Key_1"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) row_1
WHERE
	row_1."Y2000" IS NOT NULL

-- PostgreSQL.19 PostgreSQL12
SELECT
	row_1."Key_1",
	Floor(row_1."Y2000")::Int
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000",
			g_1."Category" as "Key_1"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) row_1
WHERE
	row_1."Y2000" IS NOT NULL

