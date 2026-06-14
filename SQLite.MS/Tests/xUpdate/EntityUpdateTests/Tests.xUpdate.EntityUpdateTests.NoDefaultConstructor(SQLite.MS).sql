-- SQLite.MS SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'new1'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateNoDefaultCtorTest]
SET
	[Name] = @Name,
	[Version] = [EntityUpdateNoDefaultCtorTest].[Version] + @Version
WHERE
	[EntityUpdateNoDefaultCtorTest].[Id] = @Id

-- SQLite.MS SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'new2'
DECLARE @Version  -- Int32
SET     @Version = 2
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	[EntityUpdateNoDefaultCtorTest]
SET
	[Name] = @Name,
	[Version] = [EntityUpdateNoDefaultCtorTest].[Version] + @Version
WHERE
	[EntityUpdateNoDefaultCtorTest].[Id] = @Id

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version]
FROM
	[EntityUpdateNoDefaultCtorTest] [t1]
ORDER BY
	[t1].[Id]

