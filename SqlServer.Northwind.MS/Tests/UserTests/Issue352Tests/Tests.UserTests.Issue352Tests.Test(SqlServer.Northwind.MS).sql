-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[g_2].[EmployeeID],
	(
		SELECT TOP (1)
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [g_2].[EmployeeID]
	)
FROM
	(
		SELECT DISTINCT
			[g_1].[EmployeeID]
		FROM
			[Employees] [g_1],
			[EmployeeTerritories] [et]
		WHERE
			[et].[EmployeeID] = [g_1].[EmployeeID]
	) [g_2]

