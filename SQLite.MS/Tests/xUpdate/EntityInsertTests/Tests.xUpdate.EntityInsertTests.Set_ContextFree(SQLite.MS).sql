-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @stamp  -- DateTime
SET     @stamp = '2026-01-01 10:00:00.000'
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL

INSERT INTO [EntityInsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[CreatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@stamp,
	@CreatedBy
)

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy]
FROM
	[EntityInsertTest] [t1]
LIMIT 2

