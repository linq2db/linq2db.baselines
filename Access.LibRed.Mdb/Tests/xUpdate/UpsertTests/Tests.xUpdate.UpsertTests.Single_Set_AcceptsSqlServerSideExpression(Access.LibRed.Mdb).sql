-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[CreatedBy] = @CreatedBy,
	[t1].[UpdatedAt] = @UpdatedAt,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO [UpsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[CreatedBy],
	[UpdatedAt],
	[UpdatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	Now,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-upd'
DECLARE @Version  -- Int32
SET     @Version = 2
DECLARE @CreatedAt  -- DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[CreatedBy] = @CreatedBy,
	[t1].[UpdatedAt] = Now,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = Now,
	[t1].[CreatedBy] = @CreatedBy,
	[t1].[UpdatedAt] = @UpdatedAt,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version  -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt  -- DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL

INSERT INTO [UpsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[CreatedBy],
	[UpdatedAt],
	[UpdatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	Now,
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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
	[r].[Id] = 2

