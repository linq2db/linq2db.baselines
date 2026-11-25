-- SQLite.MS SQLite
UPDATE
	[UpdateOutputPerson]
SET
	[Name] = [UpdateOutputPerson].[Name] || CAST([r].[SalaryId] AS NVarChar(11))
FROM
	[UpdateOutputEmployee] [r]
WHERE
	[UpdateOutputPerson].[EmployeeId] = [r].[Id]
RETURNING
	[UpdateOutputPerson].[EmployeeId]

