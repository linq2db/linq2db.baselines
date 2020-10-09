BeforeExecute
-- Northwind SqlServer.2017

WITH [CTE_1]
(
	[ReportsTo],
	[EmployeeID],
	[LastName],
	[FirstName]
)
AS
(
	SELECT 
		[e].[ReportsTo], 
		[e].[EmployeeID], 
		[e].[LastName], 
		[e].[FirstName]
	FROM
		[Employees] [e]
	WHERE
		[e].[EmployeeID] > 0
),
[employeeHierarchy]
(
	[EmployeeID],
	[LastName],
	[FirstName],
	[ReportsTo],
	[HierarchyLevel]
)
AS
(
	SELECT 
		[e_1].[EmployeeID], 
		[e_1].[LastName], 
		[e_1].[FirstName], 
		[e_1].[ReportsTo], 
		1
	FROM
		[CTE_1] [e_1]
	WHERE
		[e_1].[ReportsTo] IS NULL
	UNION ALL
	SELECT 
		[e_2].[EmployeeID], 
		[e_2].[LastName], 
		[e_2].[FirstName], 
		[e_2].[ReportsTo], 
		[eh].[HierarchyLevel] + 1
	FROM
		[CTE_1] [e_2]
			INNER JOIN [employeeHierarchy] [eh] ON [e_2].[ReportsTo] = [eh].[EmployeeID]
)
SELECT 
	[t1].[EmployeeID], 
	[t1].[LastName], 
	[t1].[FirstName], 
	[t1].[ReportsTo], 
	[t1].[HierarchyLevel]
FROM
	[employeeHierarchy] [t1]
ORDER BY
	[t1].[HierarchyLevel],
	[t1].[LastName],
	[t1].[FirstName]

