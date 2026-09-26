-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Category",
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010)
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010) >= 15

