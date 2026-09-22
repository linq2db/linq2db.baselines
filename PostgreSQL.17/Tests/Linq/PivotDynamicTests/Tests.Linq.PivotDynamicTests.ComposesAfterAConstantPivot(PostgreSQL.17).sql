-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Category",
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010)
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010) >= 15

