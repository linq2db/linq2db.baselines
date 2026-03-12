-- SqlServer.2005.MS SqlServer.2005

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
			[e].[TestId] IN (
				SELECT DISTINCT
					[x].[TestId]
				FROM
					[TestTable] [x]
				WHERE
					[x].[Id] <= 2
			)
	) [t1]
WHERE
	[t1].[RowNumber] = 1
ORDER BY
	[t1].[TestId]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	[TestTable] [t1]

