-- YDB Ydb
SELECT
	g_1.Category as Category,
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as SumY2000,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount
		ELSE NULL
	END) as SumY2010,
	MAX(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.`At`
		ELSE NULL
	END) as AtY2000,
	MAX(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.`At`
		ELSE NULL
	END) as AtY2010
FROM
	StrictSales g_1
GROUP BY
	g_1.Category

