-- SqlServer.2022
SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY IIF([e].[Priority] IS NULL, 1, 0), [e].[Priority], [e].[Id]) as [RowNumber],
			[e].[Group] as [Group_1],
			[e].[Priority] as [RowNumber_1],
			[e].[Id]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	IIF([x].[Group_1] IS NULL, 1, 0),
	[x].[Group_1],
	IIF([x].[RowNumber_1] IS NULL, 1, 0),
	[x].[RowNumber_1],
	[x].[Id]

-- SqlServer.2022
SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY IIF([e].[Priority] IS NULL, 1, 0), [e].[Priority], [e].[Id]) as [RowNumber],
			[e].[Group] as [Group_1],
			[e].[Priority] as [RowNumber_1],
			[e].[Id]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	IIF([x].[Group_1] IS NULL, 1, 0),
	[x].[Group_1],
	IIF([x].[RowNumber_1] IS NULL, 1, 0),
	[x].[RowNumber_1],
	[x].[Id]

