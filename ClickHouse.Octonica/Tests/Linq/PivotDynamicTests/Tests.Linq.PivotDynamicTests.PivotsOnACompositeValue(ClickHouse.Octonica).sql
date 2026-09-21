-- ClickHouse.Octonica ClickHouse
SELECT
	g_1.Category,
	sumOrNull(CASE
		WHEN g_1.Year = 2000 AND g_1.Quarter = 1 THEN g_1.Amount
		ELSE NULL
	END),
	sumOrNull(CASE
		WHEN g_1.Year = 2000 AND g_1.Quarter = 2 THEN g_1.Amount
		ELSE NULL
	END)
FROM
	QuarterAmounts g_1
GROUP BY
	g_1.Category

