BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[ProductID],
	[o].[OrderID]
FROM
	[Products] [t1]
		CROSS JOIN [Orders] [o]
		INNER JOIN [Order Details] [d] ON [t1].[ProductID] = [d].[ProductID] AND [o].[OrderID] = [d].[OrderID]

