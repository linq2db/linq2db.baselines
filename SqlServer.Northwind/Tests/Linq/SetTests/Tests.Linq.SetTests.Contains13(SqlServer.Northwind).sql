-- SqlServer.Northwind SqlServer.2019

SELECT
	[g_1].[EmployeeID],
	COUNT(IIF([g_1].[EmployeeID] = 1 AND [g_1].[TerritoryID] = N'01581' OR [g_1].[EmployeeID] = 1 AND [g_1].[TerritoryID] = N'02116' OR [g_1].[EmployeeID] = 1 AND [g_1].[TerritoryID] = N'31406', 1, NULL))
FROM
	[EmployeeTerritories] [g_1]
GROUP BY
	[g_1].[EmployeeID]

