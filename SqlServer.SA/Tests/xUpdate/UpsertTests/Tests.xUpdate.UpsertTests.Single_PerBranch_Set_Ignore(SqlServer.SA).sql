-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'first'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @updateTime DateTime2
SET     @updateTime = DATETIME2FROMPARTS(2026, 1, 1, 12, 0, 0, 0, 7)
DECLARE @insertTime DateTime2
SET     @insertTime = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)

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
		[UpdatedAt] = @updateTime,
		[UpdatedBy] = N'system'
WHEN NOT MATCHED THEN
	INSERT
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
		N'system'
	);

-- SqlServer.SA SqlServer.2019

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

-- SqlServer.SA SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'second'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @updateTime DateTime2
SET     @updateTime = DATETIME2FROMPARTS(2026, 1, 1, 12, 0, 0, 0, 7)
DECLARE @insertTime DateTime2
SET     @insertTime = DATETIME2FROMPARTS(2026, 1, 1, 10, 0, 0, 0, 7)

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
		[UpdatedAt] = @updateTime,
		[UpdatedBy] = N'system'
WHEN NOT MATCHED THEN
	INSERT
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
		N'system'
	);

-- SqlServer.SA SqlServer.2019

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

