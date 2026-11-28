-- YDB Ydb
SELECT DISTINCT
	x.`Year` as Year_1
FROM
	Sales x
ORDER BY
	Year_1

-- YDB Ydb
SELECT
	g_1.Category as Category,
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as Y2000,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount
		ELSE NULL
	END) as Y2010
FROM
	Sales g_1
GROUP BY
	g_1.Category

