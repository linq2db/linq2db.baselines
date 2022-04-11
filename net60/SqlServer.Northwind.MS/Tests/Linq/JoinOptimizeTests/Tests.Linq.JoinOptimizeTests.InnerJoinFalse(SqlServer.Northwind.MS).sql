BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[od].[OrderID],
	[od].[ProductID],
	[o1].[OrderID],
	[od].[OrderID]
FROM
	[Order Details] [od]
		INNER JOIN [Orders] [o1] ON [od].[OrderID] = [o1].[OrderID]
ORDER BY
	[o1].[OrderID],
	[od].[ProductID]

