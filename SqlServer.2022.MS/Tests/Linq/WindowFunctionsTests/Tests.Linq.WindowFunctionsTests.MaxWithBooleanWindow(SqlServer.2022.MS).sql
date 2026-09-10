-- SqlServer.2022.MS SqlServer.2022
SELECT
	[t].[Id],
	MAX([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY IIF([t].[IntValue] = 20, 1, 0), [t].[Id]),
	MAX([t].[IntValue]) OVER (PARTITION BY IIF([t].[IntValue] = 20, 1, 0) ORDER BY [t].[Id]),
	MAX([t].[IntValue]) OVER (PARTITION BY IIF([t].[NullableIntValue] IS NOT NULL, 1, 0) ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

