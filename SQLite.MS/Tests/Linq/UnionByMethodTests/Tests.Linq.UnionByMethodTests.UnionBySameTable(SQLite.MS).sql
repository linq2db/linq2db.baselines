-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Key_1],
	[t1].[Value_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_2].[Key_1] ORDER BY [e_2].[SourceIndex], [e_2].[Id]) as [RowNumber],
			[e_2].[Id],
			[e_2].[Key_1],
			[e_2].[Value_1]
		FROM
			(
				SELECT
					[e].[Id],
					[e].[Key] as [Key_1],
					[e].[Value] as [Value_1],
					CAST(0 AS INTEGER) as [SourceIndex]
				FROM
					[UnionByTable] [e]
				UNION ALL
				SELECT
					[e_1].[Id],
					[e_1].[Key] as [Key_1],
					[e_1].[Value] as [Value_1],
					CAST(1 AS INTEGER) as [SourceIndex]
				FROM
					[UnionByTable] [e_1]
			) [e_2]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Key],
	[t1].[Value]
FROM
	[UnionByTable] [t1]

