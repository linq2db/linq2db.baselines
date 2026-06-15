-- YDB Ydb

SELECT
	g_2.c1 as c1,
	COUNT(*) as Count_1
FROM
	(
		SELECT
			CASE
				WHEN g_1.TradingStatus = 'D'u THEN true
				ELSE false
			END as c1
		FROM
			Issue913Test g_1
	) g_2
GROUP BY
	g_2.c1

