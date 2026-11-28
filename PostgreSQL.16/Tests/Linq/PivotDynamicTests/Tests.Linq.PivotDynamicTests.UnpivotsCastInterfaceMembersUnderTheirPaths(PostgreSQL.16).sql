-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Category",
	'Total.Y2000'::text,
	t1."Value_1"
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Value_1",
			g_1."Category"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) t1
WHERE
	t1."Value_1" IS NOT NULL
UNION ALL
SELECT
	t2."Category",
	'Top.Y2000'::text,
	t2."Y2000"
FROM
	(
		SELECT
			MAX(g_2."Amount") FILTER (WHERE g_2."Year" = 2000) as "Y2000",
			g_2."Category"
		FROM
			"CategorySales" g_2
		GROUP BY
			g_2."Category"
	) t2
WHERE
	t2."Y2000" IS NOT NULL

