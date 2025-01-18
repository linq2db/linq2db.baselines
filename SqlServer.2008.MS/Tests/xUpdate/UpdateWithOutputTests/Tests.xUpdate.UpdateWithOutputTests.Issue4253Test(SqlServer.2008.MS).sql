BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[p]
SET
	[p].[Name] = [p].[Name] + CAST([r].[SalaryId] AS VarChar(11))
OUTPUT
	INSERTED.[EmployeeId]
FROM
	[Issue4193Person] [p]
		INNER JOIN [Issue4193Employee] [r] ON [p].[EmployeeId] = [r].[Id]

