BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

WITH [EmployeeSubordinatesReport]
(
	[ReportsTo],
	[EmployeeID],
	[LastName],
	[FirstName],
	[cnt],
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
				Count(*)
			FROM
				[Employees] [e2]
			WHERE
				([e2].[ReportsTo] = [e].[ReportsTo] OR [e2].[ReportsTo] IS NULL AND [e].[ReportsTo] IS NULL)
		),
		(
			SELECT
				Count(*)
			FROM
				[Employees] [e2_1]
			WHERE
				([e2_1].[ReportsTo] = [e].[ReportsTo] OR [e2_1].[ReportsTo] IS NULL AND [e].[ReportsTo] IS NULL)
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
	[manager].[NumberOfSubordinates]
FROM
	[EmployeeSubordinatesReport] [employee]
		LEFT JOIN [EmployeeSubordinatesReport] [manager] ON [employee].[ReportsTo] = [manager].[EmployeeID]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[employee].[LastName],
	[employee].[FirstName],
	[employee].[NumberOfSubordinates],
	[manager].[LastName],
	[manager].[FirstName],
	[manager].[NumberOfSubordinates]
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
		) [manager] ON [employee].[ReportsTo] = [manager].[EmployeeID]

