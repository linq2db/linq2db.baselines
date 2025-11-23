-- PostgreSQL.13 PostgreSQL

SELECT
	g_2.cond,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."TradingStatus" = 'D' THEN True
				ELSE False
			END as cond
		FROM
			"Issue913Test" g_1
	) g_2
GROUP BY
	g_2.cond

