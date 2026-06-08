-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[CreatedAt] = @CreatedAt,
	[CreatedBy] = @CreatedBy,
	[UpdatedAt] = @UpdatedAt,
	[UpdatedBy] = @UpdatedBy
WHERE
	[UpsertTest].[Id] = @Id

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-ins'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
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
	GetDate(),
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[Name],
	[r].[Version] as [Version_1],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'ts-upd'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[CreatedAt] = @CreatedAt,
	[CreatedBy] = @CreatedBy,
	[UpdatedAt] = GetDate(),
	[UpdatedBy] = @UpdatedBy
WHERE
	[UpsertTest].[Id] = @Id

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[Name],
	[r].[Version] as [Version_1],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[CreatedAt] = GetDate(),
	[CreatedBy] = @CreatedBy,
	[UpdatedAt] = @UpdatedAt,
	[UpdatedBy] = @UpdatedBy
WHERE
	[UpsertTest].[Id] = @Id

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'root-ts'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
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
	GetDate(),
	@CreatedBy,
	@UpdatedAt,
	@UpdatedBy
)

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[Name],
	[r].[Version] as [Version_1],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 2

