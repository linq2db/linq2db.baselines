-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Key_1",
	t1.Y2000 - t1.Y2000_1,
	t1.Y2000 - t1.Y2010
FROM
	(
		SELECT
			g_1."Category" as "Key_1",
			SUM(g_1."Amount") as Y2000,
			SUM(CASE
				WHEN g_1."Year" = 2000 THEN g_1."Amount"
				ELSE NULL
			END) as Y2000_1,
			SUM(CASE
				WHEN g_1."Year" = 2010 THEN g_1."Amount"
				ELSE NULL
			END) as Y2010
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) t1

