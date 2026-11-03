-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[RowNumber_3],
	[t1].[RowNumber_2],
	[t1].[RowNumber_4],
	[t1].[RowNumber_1]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[RowNumber_4] ORDER BY [e_1].[RowNumber_3]) as [RowNumber],
			[e_1].[RowNumber_4] as [RowNumber_1],
			[e_1].[RowNumber_3] as [RowNumber_2],
			[e_1].[RowNumber_2] as [RowNumber_3],
			[e_1].[RowNumber_1] as [RowNumber_4]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY [e].[Country] ORDER BY [e].[Id]) as [RowNumber],
					[e].[Country] as [RowNumber_1],
					[e].[Id] as [RowNumber_2],
					[e].[CustomerId] as [RowNumber_3],
					[e].[Region] as [RowNumber_4]
				FROM
					[NullableKeyData] [e]
				WHERE
					[e].[CustomerId] LIKE 'DST%' ESCAPE '~'
			) [e_1]
		WHERE
			[e_1].[RowNumber] = 1 AND [e_1].[RowNumber_2] < 100
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_2]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

