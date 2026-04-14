-- SqlServer.2016

SELECT
	AVG(IIF([t].[CategoryId] = 1, [t].[DoubleValue], NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

