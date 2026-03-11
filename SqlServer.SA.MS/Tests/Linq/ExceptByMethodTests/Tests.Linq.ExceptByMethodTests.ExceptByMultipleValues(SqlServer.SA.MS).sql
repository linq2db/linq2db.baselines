-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY [e].[TestId] ORDER BY [e].[TestId]) as [RowNumber],
			[e].[TestId],
			[e].[Id]
		FROM
			[TestTable] [e]
		WHERE
			[e].[TestId] NOT IN (20, 30)
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[TestId]

-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	[TestTable] [t1]

