BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[employee].[EmployeeID]
FROM
	[Employees] [employee]
		LEFT JOIN [Employees] [a_ReportsToEmployee] ON ([employee].[ReportsTo] = [a_ReportsToEmployee].[EmployeeID] OR [employee].[ReportsTo] IS NULL AND [a_ReportsToEmployee].[EmployeeID] IS NULL)
WHERE
	[a_ReportsToEmployee].[EmployeeID] IS NOT NULL

