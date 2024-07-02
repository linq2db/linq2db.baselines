BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[od].[OrderID],
	[o1].[OrderID],
	CASE
		WHEN [o2].[OrderID] IS NULL THEN 0
		ELSE [o2].[OrderID]
	END,
	CASE
		WHEN [o3].[OrderID] IS NULL THEN 0
		ELSE [o3].[OrderID]
	END,
	CASE
		WHEN [o2].[OrderID] IS NULL THEN 0
		ELSE [o2].[OrderID]
	END
FROM
	[Order Details] [od]
		INNER JOIN [Orders] [o1] ON [od].[OrderID] = [o1].[OrderID] AND [od].[ProductID] = 39
		INNER JOIN [Employees] [e1] ON [o1].[EmployeeID] = [e1].[EmployeeID]
		LEFT JOIN [Orders] [o2] ON [o2].[OrderID] = [od].[OrderID]
		LEFT JOIN [Orders] [o3] ON [o3].[OrderID] = [od].[OrderID] AND [od].[ProductID] = 1
		LEFT JOIN [Orders] [o5] ON [o5].[OrderID] = [od].[OrderID]
WHERE
	[o5].[OrderID] IS NOT NULL AND [o5].[OrderID] > 1000
ORDER BY
	[od].[OrderID]

