-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[od].[OrderID],
	[od].[ProductID],
	[od].[OrderID],
	[od].[OrderID]
FROM
	[Order Details] [od]
		INNER JOIN [Orders] [o1] ON [od].[OrderID] = [o1].[OrderID]
ORDER BY
	[od].[OrderID],
	[od].[ProductID]

