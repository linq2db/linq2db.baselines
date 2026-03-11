-- Access.Jet.Odbc AccessODBC

SELECT
	[g_2].[c1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[TradingStatus] = 'D', True, False) as [c1]
		FROM
			[Issue913Test] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1]

