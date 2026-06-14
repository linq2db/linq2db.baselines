-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(2) -- String
SET     @Name = 'm1'
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
DECLARE @Id Integer -- Int32
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
DECLARE @Name UniVarChar(2) -- String
SET     @Name = 'm2'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy UniVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy UniVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
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
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]

