-- PostgreSQL.11 PostgreSQL
SELECT
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010),
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"

