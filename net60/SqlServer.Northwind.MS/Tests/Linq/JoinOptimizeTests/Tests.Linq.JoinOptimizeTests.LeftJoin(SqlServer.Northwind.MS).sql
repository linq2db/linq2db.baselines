BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[od].[OrderID],
	[o1].[OrderID],
	[o].[OrderID],
	[o_1].[OrderID],
	[o].[OrderID]
FROM
	[Order Details] [od]
		INNER JOIN [Orders] [o1] ON [od].[OrderID] = [o1].[OrderID] AND [od].[ProductID] = 39
		INNER JOIN [Employees] [e1] ON [o1].[EmployeeID] = [e1].[EmployeeID]
		LEFT JOIN [Orders] [o] ON [o].[OrderID] = [od].[OrderID]
		LEFT JOIN [Orders] [o_1] ON [o_1].[OrderID] = [od].[OrderID] AND [od].[ProductID] = 1
		LEFT JOIN [Orders] [o_2] ON [o_2].[OrderID] = [od].[OrderID]
WHERE
	[o_2].[OrderID] IS NOT NULL AND [o_2].[OrderID] > 1000
ORDER BY
	[od].[OrderID]

