-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1]
		INNER JOIN [Orders] [o]
			INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
		ON [c_1].[CustomerID] = [a_Customer].[CustomerID] AND ([c_1].[ContactName] = [a_Customer].[ContactName] OR [c_1].[ContactName] IS NULL AND [a_Customer].[ContactName] IS NULL)

