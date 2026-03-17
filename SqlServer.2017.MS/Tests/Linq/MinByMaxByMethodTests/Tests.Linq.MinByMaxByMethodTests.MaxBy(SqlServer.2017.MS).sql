-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[t1].[Id],
	[t1].[TestId],
	[t1].[NTestId]
FROM
	[TestTable] [t1]
ORDER BY
	[t1].[Id] DESC,
	[t1].[TestId]

