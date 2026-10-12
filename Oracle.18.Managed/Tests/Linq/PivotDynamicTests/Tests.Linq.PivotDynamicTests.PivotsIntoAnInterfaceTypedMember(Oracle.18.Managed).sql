-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	x."Category",
	SUM(CASE
		WHEN x."Year" = 2000 THEN x."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN x."Year" = 2010 THEN x."Amount"
		ELSE NULL
	END)
FROM
	"Sales" x
GROUP BY
	x."Category"

