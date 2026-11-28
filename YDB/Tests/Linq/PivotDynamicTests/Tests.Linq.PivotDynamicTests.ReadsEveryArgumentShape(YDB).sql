-- YDB Ydb
SELECT
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as Y2000,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount
		ELSE NULL
	END) as Y2010,
	g_1.Category as Category,
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount * 2
		ELSE NULL
	END) as Y2000_1,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount * 2
		ELSE NULL
	END) as Y2010_1
FROM
	Sales g_1
GROUP BY
	g_1.Category

