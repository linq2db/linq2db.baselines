-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[od].[OrderID],
	[o1].[OrderDate],
	[o1].[OrderID],
	[o1].[OrderID],
	[o1].[OrderID]
FROM
	[Order Details] [od]
		INNER JOIN [Orders] [o1] ON [od].[OrderID] = [o1].[OrderID]
ORDER BY
	[od].[OrderID]

-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[v].[OrderID]
FROM
	[Order Details] [v]
		INNER JOIN [Orders] [o1] ON [v].[OrderID] = [o1].[OrderID]
ORDER BY
	[v].[OrderID]

