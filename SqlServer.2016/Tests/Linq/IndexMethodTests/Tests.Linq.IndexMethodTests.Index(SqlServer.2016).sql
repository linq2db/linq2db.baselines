-- SqlServer.2016

SELECT
	ROW_NUMBER() OVER (ORDER BY [item_1].[Id]) - 1,
	[item_1].[Id],
	[item_1].[TestId]
FROM
	[TestTable] [item_1]
ORDER BY
	[item_1].[Id]

-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	[TestTable] [t1]

