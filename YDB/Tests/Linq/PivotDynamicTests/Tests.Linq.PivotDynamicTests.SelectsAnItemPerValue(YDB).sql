-- YDB Ydb
SELECT
	g_1.Category as Category,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount
		ELSE NULL
	END) as Lifted,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount
		ELSE NULL
	END) as Total,
	COUNT(CASE
		WHEN g_1.`Year` = 2010 THEN 1
		ELSE NULL
	END) as Rows_1,
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as Lifted_1,
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as Total_1,
	COUNT(CASE
		WHEN g_1.`Year` = 2000 THEN 1
		ELSE NULL
	END) as Rows_2
FROM
	StrictSales g_1
GROUP BY
	g_1.Category

