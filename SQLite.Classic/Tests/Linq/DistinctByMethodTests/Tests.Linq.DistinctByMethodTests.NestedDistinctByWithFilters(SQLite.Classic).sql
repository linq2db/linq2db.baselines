-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[Region] ORDER BY [e_1].[CustomerId]) as [RowNumber],
			[e_1].[CustomerId],
			[e_1].[Id],
			[e_1].[Country],
			[e_1].[Region]
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY [e].[Country] ORDER BY [e].[Id]) as [RowNumber],
					[e].[Id],
					[e].[CustomerId],
					[e].[Region],
					[e].[Country]
				FROM
					[NullableKeyData] [e]
				WHERE
					[e].[CustomerId] LIKE 'DST%' ESCAPE '~'
			) [e_1]
		WHERE
			[e_1].[RowNumber] = 1 AND [e_1].[Id] < 100
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[CustomerId],
	[t1].[Id]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

