BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Person]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4193Person]
(
	[Name]       NVarChar(255) NOT NULL,
	[EmployeeId] INTEGER           NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'foo'
DECLARE @EmployeeId  -- Int32
SET     @EmployeeId = 1

INSERT INTO [Issue4193Person]
(
	[Name],
	[EmployeeId]
)
VALUES
(
	@Name,
	@EmployeeId
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @take  -- Int32
SET     @take = 3

UPDATE
	[Issue4193Person]
SET
	[Name] = 'new_name'
FROM
	(
		SELECT
			[x].[Name],
			[x].[EmployeeId]
		FROM
			[Issue4193Person] [x]
		WHERE
			[x].[EmployeeId] = 1
		ORDER BY
			[x].[EmployeeId]
		LIMIT @take
	) [t1]
WHERE
	[Issue4193Person].[Name] = [t1].[Name] AND ([Issue4193Person].[EmployeeId] = [t1].[EmployeeId] OR [Issue4193Person].[EmployeeId] IS NULL AND [t1].[EmployeeId] IS NULL)
RETURNING
	[Issue4193Person].[EmployeeId],
	[Issue4193Person].[Name]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4193Person]

