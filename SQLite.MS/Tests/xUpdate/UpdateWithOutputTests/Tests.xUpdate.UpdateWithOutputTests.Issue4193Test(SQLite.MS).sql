-- SQLite.MS SQLite

UPDATE
	[Issue4193Salary]
SET
	[Amount] = [a_Salary].[Amount] + 15
FROM
	[Issue4193Person] [e]
		LEFT JOIN ([Issue4193Employee] [a_Employee]
			LEFT JOIN [Issue4193Salary] [a_Salary] ON [a_Employee].[SalaryId] = [a_Salary].[Id])
		ON [e].[EmployeeId] = [a_Employee].[Id]
WHERE
	[e].[Name] = 'foo' AND [Issue4193Salary].[Id] = [a_Salary].[Id]
RETURNING
	[Issue4193Salary].[Amount]

