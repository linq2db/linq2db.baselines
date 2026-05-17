-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1]
		CROSS JOIN [Orders] [o]
WHERE
	[o].[CustomerID] = [c_1].[CustomerID]

