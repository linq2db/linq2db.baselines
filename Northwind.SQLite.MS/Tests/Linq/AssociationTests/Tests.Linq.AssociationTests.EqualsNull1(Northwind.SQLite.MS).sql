﻿BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[employee].[EmployeeID]
FROM
	[Employees] [employee]
		LEFT JOIN [Employees] [a_ReportsToEmployee] ON [employee].[ReportsTo] = [a_ReportsToEmployee].[EmployeeID] AND [employee].[ReportsTo] IS NOT NULL
WHERE
	[a_ReportsToEmployee].[EmployeeID] IS NOT NULL

