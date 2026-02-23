-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	g_2."c1",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."TradingStatus" = 'D' THEN 1
				ELSE 0
			END as "c1"
		FROM
			"Issue913Test" g_1
	) g_2
GROUP BY
	g_2."c1"

