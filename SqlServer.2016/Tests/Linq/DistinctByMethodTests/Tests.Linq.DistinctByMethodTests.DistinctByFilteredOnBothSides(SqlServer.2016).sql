-- SqlServer.2016
SELECT
	[c_1].[RowNumber_2],
	[c_1].[CustomerId],
	[c_1].[RowNumber_1],
	[c_1].[Region]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[Country] ORDER BY [e].[Id]) as [RowNumber],
			[e].[Country] as [RowNumber_1],
			[e].[Id] as [RowNumber_2],
			[e].[CustomerId],
			[e].[Region]
		FROM
			[NullableKeyData] [e]
		WHERE
			[e].[CustomerId] LIKE N'DST%' ESCAPE N'~'
	) [c_1]
WHERE
	[c_1].[RowNumber] = 1 AND [c_1].[RowNumber_2] > 1
ORDER BY
	[c_1].[RowNumber_2]

-- SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

