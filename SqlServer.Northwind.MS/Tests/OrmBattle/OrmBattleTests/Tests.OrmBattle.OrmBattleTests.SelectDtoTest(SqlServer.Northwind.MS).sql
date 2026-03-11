-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[o].[OrderID],
	[a_Customer].[CustomerID],
	[o].[OrderDate]
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]

