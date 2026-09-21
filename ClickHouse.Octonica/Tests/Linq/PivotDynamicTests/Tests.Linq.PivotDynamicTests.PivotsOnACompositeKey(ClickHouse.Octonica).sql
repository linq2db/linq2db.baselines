-- ClickHouse.Octonica ClickHouse
SELECT
	g_1.Category,
	g_1.Region,
	sumOrNull(CASE
		WHEN g_1.Year = 2000 THEN g_1.Amount
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN g_1.Year = 2010 THEN g_1.Amount
		ELSE NULL
	END)
FROM
	RegionSales g_1
GROUP BY
	g_1.Category,
	g_1.Region

