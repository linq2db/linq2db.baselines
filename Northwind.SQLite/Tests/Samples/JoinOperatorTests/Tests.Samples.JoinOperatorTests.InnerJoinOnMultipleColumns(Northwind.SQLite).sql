BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[p].[ProductID],
	[o].[OrderID]
FROM
	[Products] [p]
		CROSS JOIN [Orders] [o]
		INNER JOIN [Order Details] [d] ON [p].[ProductID] = [d].[ProductID] AND [o].[OrderID] = [d].[OrderID]

