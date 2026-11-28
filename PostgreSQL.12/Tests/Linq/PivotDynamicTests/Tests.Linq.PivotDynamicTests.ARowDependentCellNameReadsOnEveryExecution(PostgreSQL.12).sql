-- PostgreSQL.12 PostgreSQL12
SELECT
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010),
	CASE
		WHEN r."Category" = 'A' THEN 'Y2000'
		ELSE 'Y2010'
	END
FROM
	"CategorySales" r
GROUP BY
	r."Category"
ORDER BY
	r."Category"

-- PostgreSQL.12 PostgreSQL12
SELECT
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010),
	CASE
		WHEN r."Category" = 'A' THEN 'Y2000'
		ELSE 'Y2010'
	END
FROM
	"CategorySales" r
GROUP BY
	r."Category"
ORDER BY
	r."Category"

-- PostgreSQL.12 PostgreSQL12
SELECT
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010),
	CASE
		WHEN r."Category" = 'A' THEN 'Y2000'
		ELSE 'Y2010'
	END
FROM
	"CategorySales" r
GROUP BY
	r."Category"
ORDER BY
	r."Category"

-- PostgreSQL.12 PostgreSQL12
SELECT
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010),
	CASE
		WHEN r."Category" = 'A' THEN 'Y2000'
		ELSE 'Y2010'
	END
FROM
	"CategorySales" r
GROUP BY
	r."Category"
ORDER BY
	r."Category"

