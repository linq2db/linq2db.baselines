-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1]
		CROSS JOIN [Orders] [o]
WHERE
	[o].[CustomerID] = [c_1].[CustomerID] AND [c_1].[ContactName] = [c_1].[ContactName]

