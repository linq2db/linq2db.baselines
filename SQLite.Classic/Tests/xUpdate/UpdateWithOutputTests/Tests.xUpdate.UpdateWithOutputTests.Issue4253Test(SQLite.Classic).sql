-- SQLite.Classic SQLite

UPDATE
	[Issue4193Person]
SET
	[Name] = [Issue4193Person].[Name] || CAST([r].[SalaryId] AS NVarChar(11))
FROM
	[Issue4193Employee] [r]
WHERE
	[Issue4193Person].[EmployeeId] = [r].[Id]
RETURNING
	[Issue4193Person].[EmployeeId]

