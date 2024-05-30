BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t1].[CustomerID],
	[o].[OrderID],
	[o].[Freight]
FROM
	[Customers] [t1]
		INNER JOIN [Orders] [o] ON [t1].[CustomerID] = [o].[CustomerID]
WHERE
	[o].[Freight] < 500.00

