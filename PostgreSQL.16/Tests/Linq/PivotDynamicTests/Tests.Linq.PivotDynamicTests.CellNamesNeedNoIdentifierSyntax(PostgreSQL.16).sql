-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Category",
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010)
FROM
	"Sales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000) >= 5

