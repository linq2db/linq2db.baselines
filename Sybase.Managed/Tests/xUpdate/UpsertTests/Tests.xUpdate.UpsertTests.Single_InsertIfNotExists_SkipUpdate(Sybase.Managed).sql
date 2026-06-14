-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'replaced'
DECLARE @Version Integer -- Int32
SET     @Version = 99
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy UniVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy UniVarChar -- String
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
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name UniVarChar(5) -- String
SET     @Name = 'fresh'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy UniVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy UniVarChar -- String
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

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[UpsertTest] [t1]

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
	[r].[Id] = 2

