-- YDB Ydb
SELECT
	g_1.Category as Category,
	MIN(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as MinY2000,
	MAX(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as MaxY2000
FROM
	CategorySales g_1
GROUP BY
	g_1.Category

