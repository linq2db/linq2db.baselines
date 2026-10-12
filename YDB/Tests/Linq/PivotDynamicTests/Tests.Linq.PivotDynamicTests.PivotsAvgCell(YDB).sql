-- YDB Ydb
SELECT
	g_1.Category as Category,
	AVG(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as AvgY2000
FROM
	CategorySales g_1
GROUP BY
	g_1.Category

