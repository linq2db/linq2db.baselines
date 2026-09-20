-- Oracle.11.Managed Oracle11
SELECT
	g_1."Category",
	CAST(AVG(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END) AS Float),
	MIN(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END),
	MAX(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"
ORDER BY
	g_1."Category"

-- Oracle.11.Managed Oracle11
SELECT
	t1."Category",
	t1."2000"
FROM
	"CategorySales" PIVOT (AVG("Amount") FOR "Year" IN (2000)) t1
ORDER BY
	t1."Category"

