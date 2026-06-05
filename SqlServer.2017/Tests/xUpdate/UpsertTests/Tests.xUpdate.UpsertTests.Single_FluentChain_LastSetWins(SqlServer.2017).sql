-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'row'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime2
SET     @CreatedAt = NULL
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
		[CreatedBy] = N'second-root',
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
		N'second-root',
		@UpdatedAt,
		N'second-branch'
	);

-- SqlServer.2017

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

