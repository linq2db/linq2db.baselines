BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[e].[EmployeeID],
	(
		SELECT
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [e].[EmployeeID]
		LIMIT @take
	)
FROM
	[Employees] [e]
		CROSS JOIN [EmployeeTerritories] [et]
WHERE
	[et].[EmployeeID] = [e].[EmployeeID]
GROUP BY
	[e].[EmployeeID]

