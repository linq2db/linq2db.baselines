-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateDynamicTest]
SET
	[Name] = 'dyn-update'
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

