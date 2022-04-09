BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[e].[FirstName],
	[o].[OrderID]
FROM
	[Employees] [e]
		INNER JOIN [Orders] [o] ON [e].[EmployeeID] = [o].[EmployeeID]
WHERE
	[o].[OrderID] IN (11000, 11001, 11002)

