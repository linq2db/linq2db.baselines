-- SqlServer.2017.MS SqlServer.2017
UPDATE
	[p]
SET
	[p].[Name] = [p].[Name] + CAST([r].[SalaryId] AS NVarChar(11))
OUTPUT
	INSERTED.[EmployeeId]
FROM
	[UpdateOutputPerson] [p]
		INNER JOIN [UpdateOutputEmployee] [r] ON [p].[EmployeeId] = [r].[Id]

