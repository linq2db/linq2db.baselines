-- SqlServer.Contained SqlServer.2019
SELECT
	[t].[Id],
	MIN([t].[IntValue]) OVER (PARTITION BY [t].[CategoryId] ORDER BY IIF([t].[IntValue] = 20, 1, 0), [t].[Id]),
	MIN([t].[IntValue]) OVER (PARTITION BY IIF([t].[IntValue] = 20, 1, 0) ORDER BY [t].[Id]),
	MIN([t].[IntValue]) OVER (PARTITION BY IIF([t].[NullableIntValue] IS NOT NULL, 1, 0) ORDER BY [t].[Id])
FROM
	[WindowFunctionTestEntity] [t]

