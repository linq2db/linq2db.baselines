-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @modified DateTime
SET     @modified = '2026-02-02 09:00:00.000'
DECLARE @UpdatedBy UniVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[CreatedAt] = @CreatedAt,
	[UpdatedAt] = @modified,
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

-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @modified DateTime
SET     @modified = '2026-02-02 09:00:00.000'
DECLARE @UpdatedBy UniVarChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[CreatedAt] = @CreatedAt,
	[UpdatedAt] = @modified,
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

