-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Country],
	[t1].[Region]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e_1].[Country] ORDER BY [e_1].[Region]) as [RowNumber],
			[e_1].[Region],
			[e_1].[Country]
		FROM
			(
				SELECT DISTINCT
					[e].[Country],
					[e].[Region]
				FROM
					[NullableKeyData] [e]
				WHERE
					[e].[CustomerId] LIKE N'DST%' ESCAPE N'~'
			) [e_1]
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[Region]

-- SqlServer.2016.MS SqlServer.2016
SELECT
	[t1].[Id],
	[t1].[CustomerId],
	[t1].[Country],
	[t1].[Region]
FROM
	[NullableKeyData] [t1]

