-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified  -- DateTime
SET     @modified = #2026-02-02 09:00:00#
DECLARE @UpdatedBy NVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[UpdatedAt] = @modified,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified  -- DateTime
SET     @modified = #2026-02-02 09:00:00#
DECLARE @UpdatedBy NVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

INSERT INTO [UpsertTest]
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version  -- Int32
SET     @Version = 2
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified  -- DateTime
SET     @modified = #2026-02-02 09:00:00#
DECLARE @UpdatedBy NVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[UpdatedAt] = @modified,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]

