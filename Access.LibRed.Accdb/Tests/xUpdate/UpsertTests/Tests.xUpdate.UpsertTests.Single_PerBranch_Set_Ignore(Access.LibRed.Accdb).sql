-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @updateTime  -- DateTime
SET     @updateTime = #2026-01-01 12:00:00#
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[UpdatedAt] = @updateTime,
	[t1].[UpdatedBy] = 'system'
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @insertTime  -- DateTime
SET     @insertTime = #2026-01-01 10:00:00#

INSERT INTO [UpsertTest]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version  -- Int32
SET     @Version = 2
DECLARE @updateTime  -- DateTime
SET     @updateTime = #2026-01-01 12:00:00#
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[UpdatedAt] = @updateTime,
	[t1].[UpdatedBy] = 'system'
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
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

