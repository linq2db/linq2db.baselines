-- SqlServer.2019
SELECT
	[x].[Id],
	ROW_NUMBER() OVER (ORDER BY IIF([x].[IntValue] = 20, 1, 0), [x].[Id]),
	ROW_NUMBER() OVER (PARTITION BY IIF([x].[IntValue] = 20, 1, 0) ORDER BY [x].[Id])
FROM
	[WindowFunctionTestEntity] [x]
ORDER BY
	[x].[Id]

