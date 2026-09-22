-- ClickHouse.Driver ClickHouse
SELECT
	g_1.Category,
	sumOrNull(CASE
		WHEN g_1.Year = 2000 THEN g_1.Amount
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN g_1.Year = 2010 THEN g_1.Amount
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.Year = 2000 THEN g_1.At
		ELSE NULL
	END),
	maxOrNull(CASE
		WHEN g_1.Year = 2010 THEN g_1.At
		ELSE NULL
	END)
FROM
	StrictSales g_1
GROUP BY
	g_1.Category

