-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[c_1].[Id],
	[c_1].[CustomerId],
	[c_1].[Country],
	[c_1].[Region]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Country] ORDER BY [e].[Id]) as [RowNumber],
			[e].[Id],
			[e].[CustomerId],
			[e].[Country],
			[e].[Region]
		FROM
			[NullableKeyData] [e]
		WHERE
			[e].[CustomerId] LIKE 'DST%' ESCAPE '~'
	) [c_1]
WHERE
	[c_1].[RowNumber] = 1 AND [c_1].[Id] > 1
ORDER BY
	[c_1].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

