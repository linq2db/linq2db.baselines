BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[EmployeeID],
	(
		SELECT
			Count(*)
		FROM
			[EmployeeTerritories] [t]
		WHERE
			[t1].[EmployeeID] = [t].[EmployeeID] AND ([t].[EmployeeID] = 1 AND [t].[TerritoryID] = N'01581' OR [t].[EmployeeID] = 1 AND [t].[TerritoryID] = N'02116' OR [t].[EmployeeID] = 1 AND [t].[TerritoryID] = N'31406')
	)
FROM
	[EmployeeTerritories] [t1]
GROUP BY
	[t1].[EmployeeID]

