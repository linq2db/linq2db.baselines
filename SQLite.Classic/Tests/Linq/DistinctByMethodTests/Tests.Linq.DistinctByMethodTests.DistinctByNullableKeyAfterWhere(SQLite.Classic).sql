-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Country] ORDER BY [e].[CustomerId]) as [RowNumber],
			[e].[CustomerId],
			[e].[Id],
			[e].[Country],
			[e].[Region]
		FROM
			[NullableKeyData] [e]
		WHERE
			[e].[CustomerId] LIKE 'DST%' ESCAPE '~'
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[CustomerId]

-- SQLite.Classic SQLite
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

