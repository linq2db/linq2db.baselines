-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000) > 12

-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010) > 12

