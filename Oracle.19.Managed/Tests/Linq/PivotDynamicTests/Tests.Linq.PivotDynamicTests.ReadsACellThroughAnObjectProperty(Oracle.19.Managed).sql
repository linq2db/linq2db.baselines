-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Category",
	CAST(Floor(SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END)) AS Int)
FROM
	"Sales" r
GROUP BY
	r."Category"

