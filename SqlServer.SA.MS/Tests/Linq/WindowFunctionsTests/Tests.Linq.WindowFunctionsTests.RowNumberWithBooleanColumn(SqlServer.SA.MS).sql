-- SqlServer.SA.MS SqlServer.2019
SELECT
	[x].[Id],
	ROW_NUMBER() OVER (ORDER BY [x].[BoolValue], [x].[Id]),
	ROW_NUMBER() OVER (ORDER BY IIF([x].[IntValue] % 20 = 0, 1, 0), [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY [x].[BoolValue] ORDER BY [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY IIF([x].[IntValue] % 20 = 0, 1, 0) ORDER BY [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY [x].[NullableBoolValue] ORDER BY [x].[Id])
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

