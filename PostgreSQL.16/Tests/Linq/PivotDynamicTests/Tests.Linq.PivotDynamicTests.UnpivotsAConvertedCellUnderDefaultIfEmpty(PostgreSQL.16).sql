-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	Floor(t1."Y2000")::Int
FROM
	(
		SELECT DISTINCT
			x."Category"
		FROM
			"CategorySales" x
	) c_1
		LEFT JOIN (
			SELECT
				SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000",
				g_1."Category" as "Key_1"
			FROM
				"CategorySales" g_1
			GROUP BY
				g_1."Category"
		) t1 ON (t1."Key_1" = c_1."Category" OR t1."Key_1" IS NULL AND c_1."Category" IS NULL) AND t1."Y2000" IS NOT NULL AND Floor(t1."Y2000")::Int > 100

