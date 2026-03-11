-- ClickHouse.Octonica ClickHouse

SELECT
	g_2.c1,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1.TradingStatus = 'D' THEN true
				ELSE false
			END as c1
		FROM
			Issue913Test g_1
	) g_2
GROUP BY
	g_2.c1

