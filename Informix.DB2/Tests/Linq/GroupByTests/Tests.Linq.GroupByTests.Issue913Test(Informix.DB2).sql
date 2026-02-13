-- Informix.DB2 Informix

SELECT
	g_2.IsDelisted,
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN g_1.TradingStatus = 'D' THEN 't'::BOOLEAN
				ELSE 'f'::BOOLEAN
			END::BOOLEAN as IsDelisted
		FROM
			Issue913Test g_1
	) g_2
GROUP BY
	g_2.IsDelisted

