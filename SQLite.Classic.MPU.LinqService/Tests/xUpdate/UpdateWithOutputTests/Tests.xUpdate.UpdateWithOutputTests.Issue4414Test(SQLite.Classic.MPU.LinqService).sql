BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @take  -- Int32
SET     @take = 3

UPDATE
	[Issue4193Person]
SET
	[Name] = 'new_name'
WHERE
	[Issue4193Person].[EmployeeId] = 1
RETURNING
	[Issue4193Person].[EmployeeId],
	[Issue4193Person].[Name]
ORDER BY
	[Issue4193Person].[EmployeeId]
LIMIT @take

