-- SqlServer.2017

SELECT
	COUNT(IIF([t].[IntValue] > 20, 1, NULL)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

