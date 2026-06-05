-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'm1'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL

MERGE INTO [UpsertTest] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Name] = @Name,
		[Version] = @Version,
		[CreatedAt] = @CreatedAt,
		[CreatedBy] = @CreatedBy,
		[UpdatedAt] = @UpdatedAt,
		[UpdatedBy] = @UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
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
	);

-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'm2'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @CreatedAt DateTime2
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar(4000) -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime2
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = NULL

MERGE INTO [UpsertTest] [t1]
USING (SELECT @Id AS [Id]) [s] ON
(
	[t1].[Id] = [s].[Id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Name] = @Name,
		[Version] = @Version,
		[CreatedAt] = @CreatedAt,
		[CreatedBy] = @CreatedBy,
		[UpdatedAt] = @UpdatedAt,
		[UpdatedBy] = @UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
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
	);

-- SqlServer.2008

SELECT TOP (2)
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]

