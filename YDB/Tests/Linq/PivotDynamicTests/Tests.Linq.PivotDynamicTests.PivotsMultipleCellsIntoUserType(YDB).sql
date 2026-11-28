-- YDB Ydb
SELECT
	g_1.Category as Category,
	SUM(g_1.Amount) as Total,
	SUM(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Amount
		ELSE NULL
	END) as AMT_Y2000,
	SUM(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Amount
		ELSE NULL
	END) as AMT_Y2010,
	MAX(CASE
		WHEN g_1.`Year` = 2000 THEN g_1.Note
		ELSE NULL
	END) as NOTE_Y2000,
	MAX(CASE
		WHEN g_1.`Year` = 2010 THEN g_1.Note
		ELSE NULL
	END) as NOTE_Y2010
FROM
	Sales g_1
GROUP BY
	g_1.Category

