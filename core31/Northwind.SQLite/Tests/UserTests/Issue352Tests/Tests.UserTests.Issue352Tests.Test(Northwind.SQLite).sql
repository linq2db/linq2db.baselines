BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[t1].[EmployeeID],
	(
		SELECT
			[em].[FirstName]
		FROM
			[Employees] [em]
		WHERE
			[em].[EmployeeID] = [t1].[EmployeeID]
		LIMIT @take
	)
FROM
	(
		SELECT
			[e].[EmployeeID]
		FROM
			[Employees] [e],
			[EmployeeTerritories] [et]
		WHERE
			[et].[EmployeeID] = [e].[EmployeeID]
	) [t1]
GROUP BY
	[t1].[EmployeeID]

