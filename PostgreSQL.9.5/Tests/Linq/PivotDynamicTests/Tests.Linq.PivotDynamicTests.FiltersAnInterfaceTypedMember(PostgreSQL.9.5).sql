-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."Category"
FROM
	"Sales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010) > 16

-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."Category"
FROM
	"Sales" r
GROUP BY
	r."Category"
HAVING
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010) > 16

