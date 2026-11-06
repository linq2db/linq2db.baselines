-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[RowNumber_2],
	[t1].[CustomerId],
	[t1].[RowNumber_1],
	[t1].[Region]
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
			[e].[CustomerId] LIKE N'DST%' ESCAPE N'~' AND [e].[Id] > 1
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_2]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

