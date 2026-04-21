-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'root-ins'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime2
SET     @CreatedAt = NULL
DECLARE @modified DateTime2
SET     @modified = DATETIME2FROMPARTS(2026, 2, 2, 9, 0, 0, 0, 7)
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = N'sys-root-ins'

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
		[UpdatedAt] = @modified,
		[UpdatedBy] = @UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
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
	);

-- SqlServer.2022.MS SqlServer.2022

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

-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'root-upd'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @CreatedAt DateTime2
SET     @CreatedAt = NULL
DECLARE @modified DateTime2
SET     @modified = DATETIME2FROMPARTS(2026, 2, 2, 9, 0, 0, 0, 7)
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = N'sys-root-upd'

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
		[UpdatedAt] = @modified,
		[UpdatedBy] = @UpdatedBy
WHEN NOT MATCHED THEN
	INSERT
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
	);

-- SqlServer.2022.MS SqlServer.2022

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

