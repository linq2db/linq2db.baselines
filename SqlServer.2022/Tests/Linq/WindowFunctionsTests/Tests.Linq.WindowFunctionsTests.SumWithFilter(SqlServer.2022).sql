-- SqlServer.2022

SELECT
	SUM(IIF([t].[CategoryId] = 1, [t].[IntValue], NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

