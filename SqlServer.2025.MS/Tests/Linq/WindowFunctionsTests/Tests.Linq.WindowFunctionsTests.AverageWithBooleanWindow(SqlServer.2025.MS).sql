-- SqlServer.2025.MS SqlServer.2025
SELECT
	[t].[Id],
	AVG([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY IIF([t].[IntValue] = 20, 1, 0), [t].[Id]),
	AVG([t].[IntValue]) OVER (PARTITION BY IIF([t].[IntValue] = 20, 1, 0) ORDER BY [t].[Id]),
	AVG([t].[IntValue]) OVER (PARTITION BY IIF([t].[NullableIntValue] IS NOT NULL, 1, 0) ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

