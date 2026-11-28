-- YDB Ydb
SELECT
	g_1.Category as Category,
	COUNT(CASE
		WHEN g_1.`Year` = 2000 THEN 1
		ELSE NULL
	END) as Y2000,
	COUNT(CASE
		WHEN g_1.`Year` = 2010 THEN 1
		ELSE NULL
	END) as Y2010
FROM
	StrictSales g_1
GROUP BY
	g_1.Category

