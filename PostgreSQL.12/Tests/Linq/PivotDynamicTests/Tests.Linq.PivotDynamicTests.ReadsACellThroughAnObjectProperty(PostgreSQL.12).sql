-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Category",
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010)
FROM
	"Sales" r
GROUP BY
	r."Category"

-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Category",
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010)
FROM
	"Sales" r
GROUP BY
	r."Category"

-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Category",
	Floor(SUM(r."Amount") FILTER (WHERE r."Year" = 2010))::Int
FROM
	"Sales" r
GROUP BY
	r."Category"

