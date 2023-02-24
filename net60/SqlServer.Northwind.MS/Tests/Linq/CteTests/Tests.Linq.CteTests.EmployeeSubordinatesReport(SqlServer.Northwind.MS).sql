BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

WITH [EmployeeSubordinatesReport]
(
	[ReportsTo],
	[EmployeeID],
	[LastName],
	[FirstName],
	[cnt]
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
				Count(*)
			FROM
				[Employees] [e2]
			WHERE
				([e2].[ReportsTo] = [e].[ReportsTo] OR [e2].[ReportsTo] IS NULL AND [e].[ReportsTo] IS NULL)
		)
	FROM
		[Employees] [e]
)
SELECT
	[employee].[LastName],
	[employee].[FirstName],
	[employee].[cnt],
	[manager].[LastName],
	[manager].[FirstName],
	[manager].[cnt]
FROM
	[EmployeeSubordinatesReport] [employee]
		LEFT JOIN [EmployeeSubordinatesReport] [manager] ON [employee].[ReportsTo] = [manager].[EmployeeID]

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[employee].[LastName],
	[employee].[FirstName],
	[employee].[NumberOfSubordinates],
	[t1].[LastName],
	[t1].[FirstName],
	[t1].[NumberOfSubordinates]
FROM
	(
		SELECT
			[e].[ReportsTo],
			[e].[LastName],
			[e].[FirstName],
			(
				SELECT
					Count(*)
				FROM
					[Employees] [e2]
				WHERE
					([e2].[ReportsTo] = [e].[ReportsTo] OR [e2].[ReportsTo] IS NULL AND [e].[ReportsTo] IS NULL)
			) as [NumberOfSubordinates]
		FROM
			[Employees] [e]
	) [employee]
		LEFT JOIN (
			SELECT
				[e_1].[EmployeeID],
				[e_1].[LastName],
				[e_1].[FirstName],
				(
					SELECT
						Count(*)
					FROM
						[Employees] [e2_1]
					WHERE
						([e2_1].[ReportsTo] = [e_1].[ReportsTo] OR [e2_1].[ReportsTo] IS NULL AND [e_1].[ReportsTo] IS NULL)
				) as [NumberOfSubordinates]
			FROM
				[Employees] [e_1]
		) [t1] ON [employee].[ReportsTo] = [t1].[EmployeeID]

