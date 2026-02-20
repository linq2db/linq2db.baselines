-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1]
		CROSS JOIN [Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
WHERE
	[c_1].[CustomerID] = [a_Customer].[CustomerID]
ORDER BY
	[c_1].[ContactName],
	[o].[OrderDate]

