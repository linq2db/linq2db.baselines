BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[g_1].[EmployeeID],
	(
		SELECT TOP (1)
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [g_1].[EmployeeID]
	)
FROM
	[Employees] [g_1],
	[EmployeeTerritories] [et]
WHERE
	[et].[EmployeeID] = [g_1].[EmployeeID]
GROUP BY
	[g_1].[EmployeeID]

