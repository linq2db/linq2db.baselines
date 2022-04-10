﻿BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[a_Employee_1].[LastName],
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [t]
				LEFT JOIN [Employees] [a_Employee] ON [t].[EmployeeID] = [a_Employee].[EmployeeID]
		WHERE
			[a_Employee_1].[EmployeeID] = [a_Employee].[EmployeeID] AND
			[a_Employee].[FirstName] LIKE N'%an%' ESCAPE N'~'
	)
FROM
	[EmployeeTerritories] [t1]
		LEFT JOIN [Employees] [a_Employee_1] ON [t1].[EmployeeID] = [a_Employee_1].[EmployeeID]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [t2]
		WHERE
			[a_Employee_1].[EmployeeID] = [t2].[EmployeeID]
	) > 1
GROUP BY
	[a_Employee_1].[EmployeeID],
	[a_Employee_1].[LastName]

