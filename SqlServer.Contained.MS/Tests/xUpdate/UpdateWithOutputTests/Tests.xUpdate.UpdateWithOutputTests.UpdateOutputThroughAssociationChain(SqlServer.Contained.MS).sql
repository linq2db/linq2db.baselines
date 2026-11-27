-- SqlServer.Contained.MS SqlServer.2025
UPDATE
	[a_Salary]
SET
	[a_Salary].[Amount] = [a_Salary].[Amount] + 15
OUTPUT
	INSERTED.[Amount]
FROM
	[UpdateOutputPerson] [e]
		LEFT JOIN [UpdateOutputEmployee] [a_Employee] ON [e].[EmployeeId] = [a_Employee].[Id]
		LEFT JOIN [UpdateOutputSalary] [a_Salary] ON [a_Employee].[SalaryId] = [a_Salary].[Id]
WHERE
	[e].[Name] = N'foo'

