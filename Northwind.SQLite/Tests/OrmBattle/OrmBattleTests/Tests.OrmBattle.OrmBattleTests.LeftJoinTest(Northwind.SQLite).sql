BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[p].[ProductID],
	[p].[ProductName],
	[t1].[CategoryName]
FROM
	[Categories] [t1]
		LEFT JOIN ([Products] [p]
			LEFT JOIN [Categories] [a_Category] ON [p].[CategoryID] = [a_Category].[CategoryID])
		ON [t1].[CategoryID] = [a_Category].[CategoryID]

