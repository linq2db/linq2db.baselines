-- YDB Ydb
SELECT
	g_1.Category as Category,
	g_1.Region as Region,
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as Y2000,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount
		ELSE NULL
	END) as Y2010
FROM
	RegionSales g_1
GROUP BY
	g_1.Category,
	g_1.Region

