BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1]
		INNER JOIN [Orders] [o] ON ([c_1].[CustomerID] = [a_Customer].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL) AND ([c_1].[ContactName] = [a_Customer].[ContactName] OR [c_1].[ContactName] IS NULL AND [a_Customer].[ContactName] IS NULL)
			INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)

