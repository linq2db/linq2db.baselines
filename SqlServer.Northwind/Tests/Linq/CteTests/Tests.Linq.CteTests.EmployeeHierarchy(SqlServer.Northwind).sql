-- SqlServer.Northwind SqlServer.2019

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
		[t2].[EmployeeID],
		[t2].[LastName],
		[t2].[FirstName],
		[t2].[ReportsTo]
	FROM
		(
			SELECT
				[t1].[ReportsTo],
				[t1].[EmployeeID],
				[t1].[LastName],
				[t1].[FirstName]
			FROM
				[CTE_1] [t1]
		) [t2]
	WHERE
		[t2].[ReportsTo] IS NULL
	UNION ALL
	SELECT
		[eh].[HierarchyLevel] + 1,
		[t4].[EmployeeID],
		[t4].[LastName],
		[t4].[FirstName],
		[t4].[ReportsTo]
	FROM
		(
			SELECT
				[t3].[ReportsTo],
				[t3].[EmployeeID],
				[t3].[LastName],
				[t3].[FirstName]
			FROM
				[CTE_1] [t3]
		) [t4]
			INNER JOIN [employeeHierarchy] [eh] ON [t4].[ReportsTo] = [eh].[EmployeeID]
)
SELECT
	[t6].[EmployeeID],
	[t6].[LastName],
	[t6].[FirstName],
	[t6].[ReportsTo],
	[t6].[HierarchyLevel]
FROM
	(
		SELECT
			[t5].[HierarchyLevel],
			[t5].[LastName],
			[t5].[FirstName],
			[t5].[EmployeeID],
			[t5].[ReportsTo]
		FROM
			[employeeHierarchy] [t5]
	) [t6]
ORDER BY
	[t6].[HierarchyLevel],
	[t6].[LastName],
	[t6].[FirstName]

