-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'root-ins'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @modified DateTime
SET     @modified = CAST('2026-02-02T09:00:00.000' AS DATETIME)
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = N'sys-root-ins'
DECLARE @Id Int -- Int32
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

-- SqlServer.2005

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

-- SqlServer.2005
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'root-upd'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @modified DateTime
SET     @modified = CAST('2026-02-02T09:00:00.000' AS DATETIME)
DECLARE @UpdatedBy NVarChar(4000) -- String
SET     @UpdatedBy = N'sys-root-upd'
DECLARE @Id Int -- Int32
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

-- SqlServer.2005

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

