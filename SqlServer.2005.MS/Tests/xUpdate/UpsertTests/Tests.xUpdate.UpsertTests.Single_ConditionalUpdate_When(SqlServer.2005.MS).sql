-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'stale'
DECLARE @Version Int -- Int32
SET     @Version = 3
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar(4000) -- String
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

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'fresh'
DECLARE @Version Int -- Int32
SET     @Version = 10
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar(4000) -- String
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

-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
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

