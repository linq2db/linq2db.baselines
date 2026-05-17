-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[g_1].[EmployeeID],
	COUNT(CASE
		WHEN [g_1].[EmployeeID] = 1 AND [g_1].[TerritoryID] = '01581' OR [g_1].[EmployeeID] = 1 AND [g_1].[TerritoryID] = '02116' OR [g_1].[EmployeeID] = 1 AND [g_1].[TerritoryID] = '31406'
			THEN 1
		ELSE NULL
	END)
FROM
	[EmployeeTerritories] [g_1]
GROUP BY
	[g_1].[EmployeeID]

