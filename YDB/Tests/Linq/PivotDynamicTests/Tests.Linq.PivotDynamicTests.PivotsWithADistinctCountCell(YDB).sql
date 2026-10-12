-- YDB Ydb
SELECT
	g_1.Category as Category,
	COUNT(DISTINCT CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as DistinctY2000,
	COUNT(CASE
		WHEN g_1.`Year` = 2000 THEN 1
		ELSE NULL
	END) as RowsY2000
FROM
	CategorySales g_1
GROUP BY
	g_1.Category

