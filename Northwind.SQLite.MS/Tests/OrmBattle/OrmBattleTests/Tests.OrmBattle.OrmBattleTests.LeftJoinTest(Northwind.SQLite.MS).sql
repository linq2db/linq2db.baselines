BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	CASE
		WHEN [p].[ProductID] IS NULL THEN 'Nothing!'
		ELSE [p].[ProductName]
	END,
	[c_1].[CategoryName]
FROM
	[Categories] [c_1]
		LEFT JOIN ([Products] [p]
			LEFT JOIN [Categories] [a_Category] ON [p].[CategoryID] = [a_Category].[CategoryID])
		ON [c_1].[CategoryID] = [a_Category].[CategoryID]

