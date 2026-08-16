-- SqlServer.2017
SELECT
	[t].[Id],
	COUNT(IIF([t].[IntValue] = 20, 1, 0)) OVER (PARTITION BY [t].[CategoryId]),
	COUNT([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId])
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

