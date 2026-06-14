-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1 as [c1]
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'stale'
DECLARE @Version Int -- Int32
SET     @Version = 3
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
	[UpsertTest].[Id] = @Id AND @Version > [UpsertTest].[Version]

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
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1 as [c1]
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'fresh'
DECLARE @Version Int -- Int32
SET     @Version = 10
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
	[UpsertTest].[Id] = @Id AND @Version > [UpsertTest].[Version]

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

