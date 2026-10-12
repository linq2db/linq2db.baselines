-- PostgreSQL.12 PostgreSQL12
SELECT
	x."Category",
	SUM(x."Amount") FILTER (WHERE x."Year" = 2000),
	SUM(x."Amount") FILTER (WHERE x."Year" = 2010)
FROM
	"Sales" x
GROUP BY
	x."Category"

