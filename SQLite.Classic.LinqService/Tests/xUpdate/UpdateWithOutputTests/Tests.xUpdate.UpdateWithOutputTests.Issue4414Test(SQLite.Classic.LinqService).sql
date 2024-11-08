BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4193Person]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4193Person]
(
	[Name]       NVarChar(255) NOT NULL,
	[EmployeeId] INTEGER           NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 3

UPDATE
	[Issue4193Person]
SET
	[Name] = 'new_name'
WHERE
	[Issue4193Person].[EmployeeId] = 1
ORDER BY
	[Issue4193Person].[EmployeeId]
LIMIT @take
RETURNING
	[Issue4193Person].[EmployeeId],
	[Issue4193Person].[Name]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4193Person]

