-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	g_1."Category",
	SUM(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN g_1."Year" = 2010 THEN g_1."Amount"
		ELSE NULL
	END),
	MAX(CASE
		WHEN g_1."Year" = 2000 THEN g_1."At"
		ELSE NULL
	END),
	MAX(CASE
		WHEN g_1."Year" = 2010 THEN g_1."At"
		ELSE NULL
	END),
	SUM(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN g_1."Year" = 2010 THEN g_1."Amount"
		ELSE NULL
	END)
FROM
	"StrictSales" g_1
GROUP BY
	g_1."Category"

