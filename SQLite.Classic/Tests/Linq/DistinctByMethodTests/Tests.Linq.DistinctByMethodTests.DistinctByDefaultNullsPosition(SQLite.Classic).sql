-- SQLite.Classic SQLite

SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY CASE
				WHEN [e].[Priority] IS NULL THEN 1
				ELSE 0
			END, [e].[Priority], 0, [e].[Id]) as [RowNumber],
			[e].[Priority],
			[e].[Id],
			[e].[Group] as [Group_1]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[Group_1] NULLS LAST,
	[x].[Priority] NULLS LAST,
	[x].[Id]

-- SQLite.Classic SQLite

SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Group] ORDER BY CASE
				WHEN [e].[Priority] IS NULL THEN 1
				ELSE 0
			END, [e].[Priority], 0, [e].[Id]) as [RowNumber],
			[e].[Priority],
			[e].[Id],
			[e].[Group] as [Group_1]
		FROM
			[TestData] [e]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[Group_1] NULLS LAST,
	[x].[Priority] NULLS LAST,
	[x].[Id]

