-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t].[Id],
	FIRST_VALUE(IIF([t].[IntValue] = 20, 1, 0)) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id]),
	FIRST_VALUE([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]
ORDER BY
	[t].[Id]

