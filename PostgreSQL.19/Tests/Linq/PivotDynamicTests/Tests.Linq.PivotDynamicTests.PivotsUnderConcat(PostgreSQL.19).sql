-- PostgreSQL.19 PostgreSQL12
SELECT
	x."Category",
	SUM(x."Amount") FILTER (WHERE x."Year" = 2000),
	SUM(x."Amount") FILTER (WHERE x."Year" = 2010)
FROM
	"Sales" x
WHERE
	x."Category" = 'A'
GROUP BY
	x."Category"
UNION ALL
SELECT
	x_1."Category",
	MAX(x_1."Amount") FILTER (WHERE x_1."Year" = 2000),
	MAX(x_1."Amount") FILTER (WHERE x_1."Year" = 2010)
FROM
	"Sales" x_1
WHERE
	x_1."Category" = 'B'
GROUP BY
	x_1."Category"

