-- SqlServer.2008
SELECT
	[t1].[RowNumber_1],
	[t1].[RowNumber_2]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[RowNumber] ORDER BY [e_1].[RowNumber_1]) as [RowNumber],
			[e_1].[RowNumber] as [RowNumber_1],
			[e_1].[RowNumber_1] as [RowNumber_2]
		FROM
			(
				SELECT DISTINCT
					[e].[Country] as [RowNumber],
					[e].[Region] as [RowNumber_1]
				FROM
					[NullableKeyData] [e]
				WHERE
					[e].[CustomerId] LIKE N'DST%' ESCAPE N'~'
			) [e_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[RowNumber_2]

-- SqlServer.2008
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

