-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified VarChar(23) -- AnsiString
SET     @modified = '2026-02-02 09:00:00.000'
DECLARE @UpdatedBy NVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

INSERT INTO [UpsertTest] AS [t1]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[UpdatedAt],
	[UpdatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@modified,
	@UpdatedBy
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Name] = @Name,
	[Version] = @Version,
	[CreatedAt] = @CreatedAt,
	[UpdatedAt] = @modified,
	[UpdatedBy] = @UpdatedBy

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version  -- Int32
SET     @Version = 2
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified VarChar(23) -- AnsiString
SET     @modified = '2026-02-02 09:00:00.000'
DECLARE @UpdatedBy NVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'

INSERT INTO [UpsertTest] AS [t1]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[UpdatedAt],
	[UpdatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@modified,
	@UpdatedBy
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Name] = @Name,
	[Version] = @Version,
	[CreatedAt] = @CreatedAt,
	[UpdatedAt] = @modified,
	[UpdatedBy] = @UpdatedBy

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]
LIMIT 2

