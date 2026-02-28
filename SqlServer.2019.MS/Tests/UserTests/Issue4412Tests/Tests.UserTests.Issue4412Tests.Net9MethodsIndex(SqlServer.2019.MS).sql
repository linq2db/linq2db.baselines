-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Item1],
	[t1].[Id],
	[t1].[TestId]
FROM
	(
		SELECT
			CAST(ROW_NUMBER() OVER (ORDER BY [item_1].[Id]) AS Int) - 1 as [Item1],
			[item_1].[Id],
			[item_1].[TestId]
		FROM
			[TestTable] [item_1]
	) [t1]
ORDER BY
	[t1].[Item1]

