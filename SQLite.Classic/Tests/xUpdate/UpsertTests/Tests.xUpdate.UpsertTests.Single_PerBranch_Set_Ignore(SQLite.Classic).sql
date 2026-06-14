-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @insertTime VarChar(23) -- AnsiString
SET     @insertTime = '2026-01-01 10:00:00.000'
DECLARE @updateTime VarChar(23) -- AnsiString
SET     @updateTime = '2026-01-01 12:00:00.000'

INSERT INTO [UpsertTest] AS [t1]
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
	@insertTime,
	'system'
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @updateTime,
	[UpdatedBy] = 'system'

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Version],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version  -- Int32
SET     @Version = 2
DECLARE @insertTime VarChar(23) -- AnsiString
SET     @insertTime = '2026-01-01 10:00:00.000'
DECLARE @updateTime VarChar(23) -- AnsiString
SET     @updateTime = '2026-01-01 12:00:00.000'

INSERT INTO [UpsertTest] AS [t1]
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
	@insertTime,
	'system'
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @updateTime,
	[UpdatedBy] = 'system'

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Version],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

