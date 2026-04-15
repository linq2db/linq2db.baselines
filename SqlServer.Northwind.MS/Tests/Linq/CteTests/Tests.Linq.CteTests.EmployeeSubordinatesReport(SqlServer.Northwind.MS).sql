-- SqlServer.Northwind.MS SqlServer.2019

WITH [EmployeeSubordinatesReport]
(
	[ReportsTo],
	[EmployeeID],
	[LastName],
	[FirstName],
	[NumberOfSubordinates]
)
AS
(
	SELECT
		[e].[ReportsTo],
		[e].[EmployeeID],
		[e].[LastName],
		[e].[FirstName],
		(
			SELECT
				COUNT(*)
			FROM
				[Employees] [e2]
			WHERE
				[e2].[ReportsTo] = [e].[ReportsTo]
		)
	FROM
		[Employees] [e]
)
SELECT
	[employee].[LastName],
	[employee].[FirstName],
	[employee].[NumberOfSubordinates],
	[manager_1].[ManagerLastName],
	[manager_1].[ManagerFirstName],
	[manager_1].[ManagerNumberOfSubordinates]
FROM
	[EmployeeSubordinatesReport] [employee]
		LEFT JOIN (
			SELECT
				[manager].[LastName] as [ManagerLastName],
				[manager].[FirstName] as [ManagerFirstName],
				[manager].[NumberOfSubordinates] as [ManagerNumberOfSubordinates],
				[manager].[EmployeeID] as [c1]
			FROM
				[EmployeeSubordinatesReport] [manager]
		) [manager_1] ON [employee].[ReportsTo] = [manager_1].[c1]

-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[employee].[LastName],
	[employee].[FirstName],
	(
		SELECT
			COUNT(*)
		FROM
			[Employees] [e2_1]
		WHERE
			[e2_1].[ReportsTo] = [employee].[ReportsTo]
	),
	[manager_1].[ManagerLastName],
	[manager_1].[ManagerFirstName],
	[manager_1].[ManagerNumberOfSubordinates]
FROM
	[Employees] [employee]
		LEFT JOIN (
			SELECT
				[manager].[LastName] as [ManagerLastName],
				[manager].[FirstName] as [ManagerFirstName],
				(
					SELECT
						COUNT(*)
					FROM
						[Employees] [e2]
					WHERE
						[e2].[ReportsTo] = [manager].[ReportsTo]
				) as [ManagerNumberOfSubordinates],
				[manager].[EmployeeID]
			FROM
				[Employees] [manager]
		) [manager_1] ON [employee].[ReportsTo] = [manager_1].[EmployeeID]

