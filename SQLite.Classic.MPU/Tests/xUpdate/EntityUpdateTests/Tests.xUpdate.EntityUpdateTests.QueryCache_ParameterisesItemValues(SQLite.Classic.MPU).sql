-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'new1'
DECLARE @Version  -- Int32
SET     @Version = 5
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[EntityUpdateTest]
SET
	[Name] = @Name,
	[Version] = [EntityUpdateTest].[Version] + @Version,
	[UpdatedAt] = @UpdatedAt,
	[UpdatedBy] = @UpdatedBy
WHERE
	[EntityUpdateTest].[Id] = @Id

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'new2'
DECLARE @Version  -- Int32
SET     @Version = 10
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	[EntityUpdateTest]
SET
	[Name] = @Name,
	[Version] = [EntityUpdateTest].[Version] + @Version,
	[UpdatedAt] = @UpdatedAt,
	[UpdatedBy] = @UpdatedBy
WHERE
	[EntityUpdateTest].[Id] = @Id

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[EntityUpdateTest] [t1]
ORDER BY
	[t1].[Id]

