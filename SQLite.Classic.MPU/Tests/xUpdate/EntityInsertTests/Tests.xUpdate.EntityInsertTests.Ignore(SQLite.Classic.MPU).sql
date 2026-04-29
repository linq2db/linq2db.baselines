-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL

INSERT INTO [EntityInsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy]
FROM
	[EntityInsertTest] [t1]
LIMIT 2

