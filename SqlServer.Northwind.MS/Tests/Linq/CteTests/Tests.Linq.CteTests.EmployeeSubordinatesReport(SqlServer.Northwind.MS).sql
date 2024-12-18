﻿BeforeExecute
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
				([e2].[ReportsTo] = [e].[ReportsTo] AND [e2].[ReportsTo] IS NOT NULL AND [e].[ReportsTo] IS NOT NULL OR [e2].[ReportsTo] IS NULL AND [e].[ReportsTo] IS NULL) AND
				[e2].[ReportsTo] IS NOT NULL
		)
	FROM
		[Employees] [e]
)
SELECT
	[employee].[LastName],
	[employee].[FirstName],
	[employee].[NumberOfSubordinates],
	[manager].[LastName],
	[manager].[FirstName],
	[manager].[NumberOfSubordinates]
FROM
	[EmployeeSubordinatesReport] [employee]
		LEFT JOIN [EmployeeSubordinatesReport] [manager] ON [employee].[ReportsTo] = [manager].[EmployeeID] AND [employee].[ReportsTo] IS NOT NULL

BeforeExecute
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
			([e2_1].[ReportsTo] = [employee].[ReportsTo] AND [e2_1].[ReportsTo] IS NOT NULL AND [employee].[ReportsTo] IS NOT NULL OR [e2_1].[ReportsTo] IS NULL AND [employee].[ReportsTo] IS NULL) AND
			[e2_1].[ReportsTo] IS NOT NULL
	),
	[manager_1].[LastName],
	[manager_1].[FirstName],
	[manager_1].[NumberOfSubordinates]
FROM
	[Employees] [employee]
		LEFT JOIN (
			SELECT
				[manager].[LastName],
				[manager].[FirstName],
				(
					SELECT
						COUNT(*)
					FROM
						[Employees] [e2]
					WHERE
						([e2].[ReportsTo] = [manager].[ReportsTo] AND [e2].[ReportsTo] IS NOT NULL AND [manager].[ReportsTo] IS NOT NULL OR [e2].[ReportsTo] IS NULL AND [manager].[ReportsTo] IS NULL) AND
						[e2].[ReportsTo] IS NOT NULL
				) as [NumberOfSubordinates],
				[manager].[EmployeeID]
			FROM
				[Employees] [manager]
		) [manager_1] ON [employee].[ReportsTo] = [manager_1].[EmployeeID] AND [employee].[ReportsTo] IS NOT NULL

