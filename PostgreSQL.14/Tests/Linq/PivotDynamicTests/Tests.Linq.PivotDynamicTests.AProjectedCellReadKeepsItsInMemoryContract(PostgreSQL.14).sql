-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010),
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"

