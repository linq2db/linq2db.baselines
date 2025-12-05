-- SqlServer.Northwind.MS SqlServer.2019

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
	[HierarchyLevel],
	[EmployeeID],
	[LastName],
	[FirstName],
	[ReportsTo]
)
AS
(
	SELECT
		CAST(1 AS Int),
		[t1].[EmployeeID],
		[t1].[LastName],
		[t1].[FirstName],
		[t1].[ReportsTo]
	FROM
		[CTE_1] [t1]
	WHERE
		[t1].[ReportsTo] IS NULL
	UNION ALL
	SELECT
		[eh].[HierarchyLevel] + 1,
		[t2].[EmployeeID],
		[t2].[LastName],
		[t2].[FirstName],
		[t2].[ReportsTo]
	FROM
		[CTE_1] [t2]
			INNER JOIN [employeeHierarchy] [eh] ON [t2].[ReportsTo] = [eh].[EmployeeID]
)
SELECT
	[t3].[EmployeeID],
	[t3].[LastName],
	[t3].[FirstName],
	[t3].[ReportsTo],
	[t3].[HierarchyLevel]
FROM
	[employeeHierarchy] [t3]
ORDER BY
	[t3].[HierarchyLevel],
	[t3].[LastName],
	[t3].[FirstName]

