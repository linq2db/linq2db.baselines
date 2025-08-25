BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

UPDATE
	[Issue4193Salary]
SET
	[Amount] = [Issue4193Salary].[Amount] + 15
FROM
	[Issue4193Person] [e]
		LEFT JOIN [Issue4193Employee] [a_Employee] ON [e].[EmployeeId] = [a_Employee].[Id]
WHERE
	[e].[Name] = 'foo' AND [a_Employee].[SalaryId] = [Issue4193Salary].[Id]
RETURNING
	[Issue4193Salary].[Amount]

