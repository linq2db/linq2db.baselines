-- PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	Floor(x."Amount")::Int
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND x."Category" = 'A'
LIMIT 2

-- PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Key_1",
	'Y2000'::text,
	Floor(t1."Y2000")::Int
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000",
			g_1."Category" as "Key_1"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) t1
WHERE
	t1."Y2000" IS NOT NULL
UNION ALL
SELECT
	t2."Key_1",
	'Y2010'::text,
	Floor(t2."Y2010")::Int
FROM
	(
		SELECT
			SUM(g_2."Amount") FILTER (WHERE g_2."Year" = 2010) as "Y2010",
			g_2."Category" as "Key_1"
		FROM
			"CategorySales" g_2
		GROUP BY
			g_2."Category"
	) t2
WHERE
	t2."Y2010" IS NOT NULL

-- PostgreSQL.9.5 PostgreSQL
SELECT
	row_1."Category",
	Floor(SUM(row_1."Amount") FILTER (WHERE row_1."Year" = 2020))::Int
FROM
	"CategorySales" row_1
GROUP BY
	row_1."Category"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	row_1."Category",
	Floor(SUM(row_1."Amount") FILTER (WHERE row_1."Year" = 2020))::Int
FROM
	"CategorySales" row_1
GROUP BY
	row_1."Category"

