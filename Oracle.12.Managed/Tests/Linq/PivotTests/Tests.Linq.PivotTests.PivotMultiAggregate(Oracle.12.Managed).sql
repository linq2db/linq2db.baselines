-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	g_1."Category",
	SUM(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END),
	COUNT(CASE
		WHEN g_1."Year" = 2000 THEN 1
		ELSE NULL
	END)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"
ORDER BY
	g_1."Category"

