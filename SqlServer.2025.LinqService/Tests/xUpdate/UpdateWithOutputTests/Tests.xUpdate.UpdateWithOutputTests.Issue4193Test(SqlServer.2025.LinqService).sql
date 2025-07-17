BeforeExecute
-- SqlServer.2025 SqlServer.2022

UPDATE
	[a_Salary]
SET
	[a_Salary].[Amount] = [a_Salary].[Amount] + 15
OUTPUT
	INSERTED.[Amount]
FROM
	[Issue4193Person] [e]
		LEFT JOIN [Issue4193Employee] [a_Employee] ON [e].[EmployeeId] = [a_Employee].[Id]
		LEFT JOIN [Issue4193Salary] [a_Salary] ON [a_Employee].[SalaryId] = [a_Salary].[Id]
WHERE
	[e].[Name] = N'foo'

