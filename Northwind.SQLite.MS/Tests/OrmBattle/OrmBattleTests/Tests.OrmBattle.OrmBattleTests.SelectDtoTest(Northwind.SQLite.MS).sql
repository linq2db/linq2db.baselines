BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[o].[OrderID],
	[a_Customer].[CustomerID],
	[o].[OrderDate]
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)

