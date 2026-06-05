-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY [e].[Priority] NULLS LAST, [e].[Id]) as [RowNumber],
			[e].[Group] as [Group_1],
			[e].[Id],
			[e].[Priority]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[Group_1] NULLS LAST,
	[x].[Priority] NULLS LAST,
	[x].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY [e].[Priority] NULLS LAST, [e].[Id]) as [RowNumber],
			[e].[Group] as [Group_1],
			[e].[Id],
			[e].[Priority]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[Group_1] NULLS LAST,
	[x].[Priority] NULLS LAST,
	[x].[Id]

