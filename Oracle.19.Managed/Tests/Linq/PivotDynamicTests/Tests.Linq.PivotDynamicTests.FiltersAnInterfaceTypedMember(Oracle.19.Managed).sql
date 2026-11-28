-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Category"
FROM
	"Sales" r
GROUP BY
	r."Category"
HAVING
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END) > 16

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Category"
FROM
	"Sales" r
GROUP BY
	r."Category"
HAVING
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END) > 16

