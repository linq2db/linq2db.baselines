-- SqlServer.2016.MS SqlServer.2016

UPDATE
	[p]
SET
	[p].[Name] = [p].[Name] + CAST([r].[SalaryId] AS NVarChar(11))
OUTPUT
	INSERTED.[EmployeeId]
FROM
	[Issue4193Person] [p]
		INNER JOIN [Issue4193Employee] [r] ON [p].[EmployeeId] = [r].[Id]

