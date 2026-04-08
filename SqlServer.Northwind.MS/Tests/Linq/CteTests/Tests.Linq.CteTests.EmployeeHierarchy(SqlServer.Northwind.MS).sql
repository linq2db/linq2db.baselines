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
		1 = 0
	UNION ALL
	SELECT
		[eh].[HierarchyLevel] + 1,
		[t3].[EmployeeID],
		[t3].[LastName],
		[t3].[FirstName],
		[t3].[ReportsTo]
	FROM
		(
			SELECT
				[t2].[ReportsTo],
				[t2].[EmployeeID],
				[t2].[LastName],
				[t2].[FirstName]
			FROM
				[CTE_1] [t2]
		) [t3]
			INNER JOIN [employeeHierarchy] [eh] ON [t3].[ReportsTo] = [eh].[EmployeeID]
)
SELECT
	[t5].[EmployeeID],
	[t5].[LastName],
	[t5].[FirstName],
	[t5].[ReportsTo],
	[t5].[HierarchyLevel]
FROM
	(
		SELECT
			[t4].[HierarchyLevel],
			[t4].[LastName],
			[t4].[FirstName],
			[t4].[EmployeeID],
			[t4].[ReportsTo]
		FROM
			[employeeHierarchy] [t4]
	) [t5]
ORDER BY
	[t5].[HierarchyLevel],
	[t5].[LastName],
	[t5].[FirstName]

