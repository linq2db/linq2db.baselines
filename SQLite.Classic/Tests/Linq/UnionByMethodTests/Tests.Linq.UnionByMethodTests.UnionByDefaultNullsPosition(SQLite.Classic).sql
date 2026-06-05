-- SQLite.Classic SQLite

SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_2].[Key_1] ORDER BY [e_2].[SourceIndex], [e_2].[Priority] NULLS LAST) as [RowNumber],
			[e_2].[Id],
			[e_2].[Key_1]
		FROM
			(
				SELECT
					[e].[Id],
					[e].[Key] as [Key_1],
					[e].[Priority],
					CAST(0 AS INTEGER) as [SourceIndex]
				FROM
					[UnionByLeft] [e]
				UNION ALL
				SELECT
					[e_1].[Id],
					[e_1].[Key] as [Key_1],
					[e_1].[Priority],
					CAST(1 AS INTEGER) as [SourceIndex]
				FROM
					[UnionByRight] [e_1]
			) [e_2]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[Key_1]

-- SQLite.Classic SQLite

SELECT
	[x].[Id]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_2].[Key_1] ORDER BY [e_2].[SourceIndex], [e_2].[Priority] NULLS LAST) as [RowNumber],
			[e_2].[Id],
			[e_2].[Key_1]
		FROM
			(
				SELECT
					[e].[Id],
					[e].[Key] as [Key_1],
					[e].[Priority],
					CAST(0 AS INTEGER) as [SourceIndex]
				FROM
					[UnionByLeft] [e]
				UNION ALL
				SELECT
					[e_1].[Id],
					[e_1].[Key] as [Key_1],
					[e_1].[Priority],
					CAST(1 AS INTEGER) as [SourceIndex]
				FROM
					[UnionByRight] [e_1]
			) [e_2]
	) [x]
WHERE
	[x].[RowNumber] = 1
ORDER BY
	[x].[Key_1]

