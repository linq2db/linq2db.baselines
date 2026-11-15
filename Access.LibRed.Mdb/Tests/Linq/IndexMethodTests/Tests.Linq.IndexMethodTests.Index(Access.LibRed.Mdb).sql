-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	ROW_NUMBER() OVER (ORDER BY [item_1].[Id]) - 1,
	[item_1].[Id],
	[item_1].[TestId]
FROM
	[TestTable] [item_1]
ORDER BY
	[item_1].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[TestId]
FROM
	[TestTable] [t1]

