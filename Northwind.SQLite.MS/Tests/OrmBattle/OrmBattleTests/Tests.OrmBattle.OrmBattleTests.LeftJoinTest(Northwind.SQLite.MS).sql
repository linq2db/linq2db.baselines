BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	CASE
		WHEN [p].[ProductID] IS NULL THEN 'Nothing!'
		ELSE [p].[ProductName]
	END,
	[t1].[CategoryName]
FROM
	[Categories] [t1]
		LEFT JOIN ([Products] [p]
			LEFT JOIN [Categories] [a_Category] ON [p].[CategoryID] = [a_Category].[CategoryID])
		ON [t1].[CategoryID] = [a_Category].[CategoryID]

