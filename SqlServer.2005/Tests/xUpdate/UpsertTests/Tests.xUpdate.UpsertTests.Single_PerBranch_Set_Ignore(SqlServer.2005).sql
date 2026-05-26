-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'first'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @updateTime DateTime
SET     @updateTime = CAST('2026-01-01T12:00:00.000' AS DATETIME)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @insertTime DateTime
SET     @insertTime = CAST('2026-01-01T10:00:00.000' AS DATETIME)

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @updateTime,
	[UpdatedBy] = N'system'
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [UpsertTest]
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
	)
END

-- SqlServer.2005

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

-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'second'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @updateTime DateTime
SET     @updateTime = CAST('2026-01-01T12:00:00.000' AS DATETIME)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @insertTime DateTime
SET     @insertTime = CAST('2026-01-01T10:00:00.000' AS DATETIME)

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @updateTime,
	[UpdatedBy] = N'system'
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [UpsertTest]
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
	)
END

-- SqlServer.2005

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

