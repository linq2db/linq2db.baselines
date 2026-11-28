-- Oracle.11.Managed Oracle11
SELECT
	SUM(CASE
		WHEN r."Year" = 2000 THEN r."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END),
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

-- Oracle.11.Managed Oracle11
SELECT
	SUM(CASE
		WHEN r."Year" = 2000 THEN r."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END),
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

-- Oracle.11.Managed Oracle11
SELECT
	SUM(CASE
		WHEN r."Year" = 2000 THEN r."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END),
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

-- Oracle.11.Managed Oracle11
SELECT
	SUM(CASE
		WHEN r."Year" = 2000 THEN r."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END),
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

