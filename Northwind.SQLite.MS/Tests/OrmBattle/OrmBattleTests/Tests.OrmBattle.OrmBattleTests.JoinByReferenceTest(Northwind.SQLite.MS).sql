BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1]
		INNER JOIN [Orders] [o] ON ([c_1].[CustomerID] = [a_Customer].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
			INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)

