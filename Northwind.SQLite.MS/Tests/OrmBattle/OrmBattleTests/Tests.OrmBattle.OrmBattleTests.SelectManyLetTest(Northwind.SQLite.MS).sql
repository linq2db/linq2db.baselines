BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[CustomerID],
	[o].[OrderID],
	[o].[Freight]
FROM
	[Customers] [c_1]
		INNER JOIN [Orders] [o] ON ([c_1].[CustomerID] = [o].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [o].[CustomerID] IS NULL)
WHERE
	[o].[Freight] < 500.00

