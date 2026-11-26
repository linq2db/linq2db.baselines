-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	g_1."Category",
	SUM(g_1."Amount"),
	SUM(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN g_1."Year" = 2010 THEN g_1."Amount"
		ELSE NULL
	END),
	MAX(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Note"
		ELSE NULL
	END),
	MAX(CASE
		WHEN g_1."Year" = 2010 THEN g_1."Note"
		ELSE NULL
	END)
FROM
	"Sales" g_1
GROUP BY
	g_1."Category"

