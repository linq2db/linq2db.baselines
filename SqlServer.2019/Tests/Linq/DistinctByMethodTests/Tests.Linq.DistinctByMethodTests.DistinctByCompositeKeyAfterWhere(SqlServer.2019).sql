-- SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Country], [e].[Region] ORDER BY [e].[Id]) as [RowNumber],
			[e].[Id],
			[e].[CustomerId],
			[e].[Country],
			[e].[Region]
		FROM
			[NullableKeyData] [e]
		WHERE
			[e].[CustomerId] LIKE N'DST%' ESCAPE N'~'
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[Id]

-- SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

