-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'replaced'
DECLARE @Version Int -- Int32
SET     @Version = 99
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL

IF NOT EXISTS(
	SELECT 1 
	FROM
		[UpsertTest] [t1]
	WHERE
		[t1].[Id] = @Id
)
BEGIN
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
		@CreatedAt,
		@CreatedBy,
		@UpdatedAt,
		@UpdatedBy
	)
END

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
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'fresh'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL

IF NOT EXISTS(
	SELECT 1 
	FROM
		[UpsertTest] [t1]
	WHERE
		[t1].[Id] = @Id
)
BEGIN
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
		@CreatedAt,
		@CreatedBy,
		@UpdatedAt,
		@UpdatedBy
	)
END

-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	[UpsertTest] [t1]

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
	[r].[Id] = 2

