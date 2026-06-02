-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY IIF([e].[Priority] IS NULL, 1, 0), [e].[Priority], [e].[Id]) as [RowNumber],
			[e].[Priority],
			[e].[Id],
			[e].[Group] as [Group_1]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	IIF([x].[Group_1] IS NULL, 1, 0),
	[x].[Group_1],
	IIF([x].[Priority] IS NULL, 1, 0),
	[x].[Priority],
	[x].[Id]

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY IIF([e].[Priority] IS NULL, 1, 0), [e].[Priority], [e].[Id]) as [RowNumber],
			[e].[Priority],
			[e].[Id],
			[e].[Group] as [Group_1]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	IIF([x].[Group_1] IS NULL, 1, 0),
	[x].[Group_1],
	IIF([x].[Priority] IS NULL, 1, 0),
	[x].[Priority],
	[x].[Id]

