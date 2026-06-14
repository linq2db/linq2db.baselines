-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(2) -- String
SET     @Name = 'n1'
DECLARE @Version  -- Int32
SET     @Version = 2

INSERT INTO [EntityInsertNoDefaultCtorTest]
(
	[Id],
	[Name],
	[Version]
)
VALUES
(
	@Id,
	@Name,
	@Version
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(2) -- String
SET     @Name = 'n2'
DECLARE @Version  -- Int32
SET     @Version = 3

INSERT INTO [EntityInsertNoDefaultCtorTest]
(
	[Id],
	[Name],
	[Version]
)
VALUES
(
	@Id,
	@Name,
	@Version
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version]
FROM
	[EntityInsertNoDefaultCtorTest] [t1]
ORDER BY
	[t1].[Id]

