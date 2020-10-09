BeforeExecute
-- Northwind SqlServer.2017

SELECT 
	[t1].[EmployeeID], 
	(
		SELECT 
			Count(*)
		FROM
			[EmployeeTerritories] [keyParam]
		WHERE
			[t1].[EmployeeID] = [keyParam].[EmployeeID] AND ([keyParam].[EmployeeID] = 1 AND [keyParam].[TerritoryID] = N'01581' OR [keyParam].[EmployeeID] = 1 AND [keyParam].[TerritoryID] = N'02116' OR [keyParam].[EmployeeID] = 1 AND [keyParam].[TerritoryID] = N'31406')
	)
FROM
	[EmployeeTerritories] [t1]
GROUP BY
	[t1].[EmployeeID]

