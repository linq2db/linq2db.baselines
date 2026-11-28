-- Oracle.11.Managed Oracle11
SELECT
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	SUM(CASE
		WHEN r."Year" = 2000 THEN r."Amount"
		ELSE NULL
	END) > 12

-- Oracle.11.Managed Oracle11
SELECT
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END) > 12

