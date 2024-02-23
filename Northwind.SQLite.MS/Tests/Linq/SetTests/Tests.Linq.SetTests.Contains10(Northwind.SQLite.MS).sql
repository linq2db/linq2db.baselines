BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[FirstName],
	[o].[OrderID]
FROM
	[Employees] [t1]
		INNER JOIN [Orders] [o] ON [t1].[EmployeeID] = [o].[EmployeeID]
WHERE
	[o].[OrderID] IN (11000, 11001, 11002)

