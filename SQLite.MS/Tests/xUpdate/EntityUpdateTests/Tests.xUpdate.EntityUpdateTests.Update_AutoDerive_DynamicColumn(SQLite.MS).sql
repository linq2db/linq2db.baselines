-- SQLite.MS SQLite
DECLARE @Name NVarChar(11) -- String
SET     @Name = 'auto-update'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateDynamicTest]
SET
	[Name] = @Name
WHERE
	[EntityUpdateDynamicTest].[Id] = @Id

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Name]
FROM
	[EntityUpdateDynamicTest] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

