-- SqlServer.2012
SELECT
	[t1].[RowNumber_3],
	[t1].[CustomerId],
	[t1].[RowNumber_1],
	[t1].[RowNumber_2]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Country], [e].[Region] ORDER BY [e].[Id]) as [RowNumber],
			[e].[Country] as [RowNumber_1],
			[e].[Region] as [RowNumber_2],
			[e].[Id] as [RowNumber_3],
			[e].[CustomerId]
		FROM
			[NullableKeyData] [e]
		WHERE
			[e].[CustomerId] LIKE N'DST%' ESCAPE N'~'
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_3]

-- SqlServer.2012
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

