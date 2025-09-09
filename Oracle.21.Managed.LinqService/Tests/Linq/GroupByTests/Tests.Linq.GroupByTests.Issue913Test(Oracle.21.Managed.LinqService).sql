BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	g_2."cond",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."TradingStatus" = 'D' THEN 1
				ELSE 0
			END as "cond"
		FROM
			"Issue913Test" g_1
	) g_2
GROUP BY
	g_2."cond"

