BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t1].[EmployeeID],
	(
		SELECT TOP (1)
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [t1].[EmployeeID]
	)
FROM
	(
		SELECT
			[e].[EmployeeID]
		FROM
			[Employees] [e],
			[EmployeeTerritories] [et]
		WHERE
			[et].[EmployeeID] = [e].[EmployeeID]
	) [t1]
GROUP BY
	[t1].[EmployeeID]

