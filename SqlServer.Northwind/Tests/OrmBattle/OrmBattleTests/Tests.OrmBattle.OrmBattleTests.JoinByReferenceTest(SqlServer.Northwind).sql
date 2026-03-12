-- SqlServer.Northwind SqlServer.2019

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1]
		INNER JOIN [Orders] [o]
			INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
		ON [c_1].[CustomerID] = [a_Customer].[CustomerID]

