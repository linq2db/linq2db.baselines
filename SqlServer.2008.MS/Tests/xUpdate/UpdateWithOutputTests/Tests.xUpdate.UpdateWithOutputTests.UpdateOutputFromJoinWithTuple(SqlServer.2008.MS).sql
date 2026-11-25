-- SqlServer.2008.MS SqlServer.2008
UPDATE
	[p]
SET
	[p].[Name] = [p].[Name] + CAST([r].[SalaryId] AS NVarChar(11))
OUTPUT
	INSERTED.[EmployeeId]
FROM
	[UpdateOutputPerson] [p]
		INNER JOIN [UpdateOutputEmployee] [r] ON [p].[EmployeeId] = [r].[Id]

