-- SqlServer.2019
SELECT
	[t1].[RowNumber_2],
	[t1].[CustomerId],
	[t1].[RowNumber_1],
	[t1].[Region]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[RowNumber_1] ORDER BY [e].[RowNumber]) as [RowNumber],
			[e].[RowNumber_1],
			[e].[RowNumber] as [RowNumber_2],
			[e].[CustomerId],
			[e].[Region]
		FROM
			(
				SELECT
					[c_1].[Id] as [RowNumber],
					[c_1].[Country] as [RowNumber_1],
					[c_1].[CustomerId],
					[c_1].[Region]
				FROM
					[NullableKeyData] [c_1]
				WHERE
					[c_1].[CustomerId] LIKE N'DST%' ESCAPE N'~'
			) [e]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_2]

-- SqlServer.2019
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

