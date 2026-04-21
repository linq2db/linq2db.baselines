-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @updateTime DateTime
SET     @updateTime = '2026-01-01 12:00:00'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @insertTime DateTime
SET     @insertTime = '2026-01-01 10:00:00'

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @updateTime,
	[UpdatedBy] = 'system'
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
		'system'
	)
END

-- Sybase.Managed Sybase

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

-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @updateTime DateTime
SET     @updateTime = '2026-01-01 12:00:00'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @insertTime DateTime
SET     @insertTime = '2026-01-01 10:00:00'

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @updateTime,
	[UpdatedBy] = 'system'
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
		'system'
	)
END

-- Sybase.Managed Sybase

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

