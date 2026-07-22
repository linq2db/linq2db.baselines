-- SqlServer.2019.MS SqlServer.2019
SELECT
	[t].[Id],
	LAG(IIF([t].[IntValue] = 20, 1, 0)) OVER (ORDER BY [t].[Id]),
	LAG([t].[IntValue]) OVER (ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

