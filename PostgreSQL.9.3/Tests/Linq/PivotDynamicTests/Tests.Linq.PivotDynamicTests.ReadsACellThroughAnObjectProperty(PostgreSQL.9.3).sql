-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Category",
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END)
FROM
	"Sales" r
GROUP BY
	r."Category"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Category",
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END)
FROM
	"Sales" r
GROUP BY
	r."Category"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Category",
	Floor(SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END))::Int
FROM
	"Sales" r
GROUP BY
	r."Category"

