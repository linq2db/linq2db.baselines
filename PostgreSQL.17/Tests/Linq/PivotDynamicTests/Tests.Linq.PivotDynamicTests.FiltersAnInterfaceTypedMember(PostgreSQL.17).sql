-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Category"
FROM
	"Sales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010) > 16

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."Category"
FROM
	"Sales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010) > 16

