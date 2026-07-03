-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t].[Id],
	SUM(IIF([t].[CategoryId] = 1, [t].[IntValue], NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

