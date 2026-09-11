-- SqlServer.2017
SELECT
	[t].[Id],
	SUM(IIF([t].[CategoryId] = 1, [t].[IntValue], NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

