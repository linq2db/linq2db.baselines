-- SqlServer.Contained.MS SqlServer.2019
SELECT
	[t].[Id],
	SUM([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY IIF([t].[IntValue] = 20, 1, 0), [t].[Id]),
	SUM([t].[IntValue]) OVER (PARTITION BY IIF([t].[IntValue] = 20, 1, 0) ORDER BY [t].[Id]),
	SUM([t].[IntValue]) OVER (PARTITION BY IIF([t].[NullableIntValue] IS NOT NULL, 1, 0) ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

