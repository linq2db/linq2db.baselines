-- SqlServer.2014.MS SqlServer.2014

SELECT
	[x_1].[Id],
	[x_1].[TestId]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [x].[TestId] ORDER BY [x].[TestId]) as [RowNumber],
			[x].[Id],
			[x].[TestId]
		FROM
			[TestTable] [x]
		WHERE
			[x].[TestId] NOT IN (20)
	) [x_1]
WHERE
	[x_1].[RowNumber] = 1

-- SqlServer.2014.MS SqlServer.2014

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	[TestTable] [t1]

