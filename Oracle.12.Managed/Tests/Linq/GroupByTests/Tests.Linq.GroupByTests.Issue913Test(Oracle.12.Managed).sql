-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	g_2."IsDelisted",
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1."TradingStatus" = 'D' THEN 1
				ELSE 0
			END as "IsDelisted"
		FROM
			"Issue913Test" g_1
	) g_2
GROUP BY
	g_2."IsDelisted"

