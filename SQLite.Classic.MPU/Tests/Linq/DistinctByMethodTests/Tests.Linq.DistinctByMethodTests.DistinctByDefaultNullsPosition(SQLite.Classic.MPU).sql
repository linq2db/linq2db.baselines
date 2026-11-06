-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY [e].[Priority] NULLS LAST, [e].[Id]) as [RowNumber],
			[e].[Group] as [Group_1],
			[e].[Priority] as [RowNumber_1],
			[e].[Id]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[Group_1] NULLS LAST,
	[x].[RowNumber_1] NULLS LAST,
	[x].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY [e].[Priority] NULLS LAST, [e].[Id]) as [RowNumber],
			[e].[Group] as [Group_1],
			[e].[Priority] as [RowNumber_1],
			[e].[Id]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[Group_1] NULLS LAST,
	[x].[RowNumber_1] NULLS LAST,
	[x].[Id]

