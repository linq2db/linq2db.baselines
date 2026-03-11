-- SqlServer.2014

SELECT
	[g_2].[c1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([g_1].[TradingStatus] = N'D', 1, 0) as [c1]
		FROM
			[Issue913Test] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1]

