BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[ProductID],
	[t1].[OrderID]
FROM
	(
		SELECT
			[p].[ProductID],
			[o].[OrderID]
		FROM
			[Products] [p],
			[Orders] [o]
	) [t1]
		INNER JOIN [Order Details] [d] ON [t1].[ProductID] = [d].[ProductID] AND [t1].[OrderID] = [d].[OrderID]

