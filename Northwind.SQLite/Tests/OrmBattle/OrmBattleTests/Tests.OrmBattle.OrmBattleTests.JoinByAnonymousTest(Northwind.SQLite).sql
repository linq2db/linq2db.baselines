﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1]
		INNER JOIN ([Orders] [o]
			INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID] AND [o].[CustomerID] IS NOT NULL)
		ON [c_1].[CustomerID] = [a_Customer].[CustomerID] AND ([c_1].[ContactName] = [a_Customer].[ContactName] AND [c_1].[ContactName] IS NOT NULL AND [a_Customer].[ContactName] IS NOT NULL OR [c_1].[ContactName] IS NULL AND [a_Customer].[ContactName] IS NULL)

