-- YDB Ydb
SELECT
	g_1.Category as Category,
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as `2000`,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount
		ELSE NULL
	END) as `2010`,
	SUM(CASE
		WHEN g_1.Region = 'EU'u THEN g_1.Amount
		ELSE NULL
	END) as EU,
	SUM(CASE
		WHEN g_1.Region = '2000'u THEN g_1.Amount
		ELSE NULL
	END) as `2000_1`
FROM
	RegionSales g_1
GROUP BY
	g_1.Category

