-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 42
DECLARE @Name UniVarChar(4) -- String
SET     @Name = 'seed'
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

-- Sybase.Managed Sybase

MERGE INTO [UpsertTest] [Target]
USING (
	SELECT 42 AS [Id], 'first-update' AS [Name], 50 AS [Version_1], CAST(NULL AS DateTime) AS [CreatedAt], CAST(NULL AS NVarChar(255)) AS [CreatedBy], CAST(NULL AS DateTime) AS [UpdatedAt], CAST(NULL AS NVarChar(255)) AS [UpdatedBy]) [Source]
(
	[Id],
	[Name],
	[Version_1],
	[CreatedAt],
	[CreatedBy],
	[UpdatedAt],
	[UpdatedBy]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Name] = [Source].[Name],
	[Version] = [Source].[Version_1],
	[CreatedAt] = [Source].[CreatedAt],
	[CreatedBy] = [Source].[CreatedBy],
	[UpdatedAt] = [Source].[UpdatedAt],
	[UpdatedBy] = [Source].[UpdatedBy]

-- Sybase.Managed Sybase

MERGE INTO [UpsertTest] [Target]
USING (
	SELECT 42 AS [Id], 'second-update' AS [Name], 99 AS [Version_1], CAST(NULL AS DateTime) AS [CreatedAt], CAST(NULL AS NVarChar(255)) AS [CreatedBy], CAST(NULL AS DateTime) AS [UpdatedAt], CAST(NULL AS NVarChar(255)) AS [UpdatedBy]) [Source]
(
	[Id],
	[Name],
	[Version_1],
	[CreatedAt],
	[CreatedBy],
	[UpdatedAt],
	[UpdatedBy]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Name] = [Source].[Name],
	[Version] = [Source].[Version_1],
	[CreatedAt] = [Source].[CreatedAt],
	[CreatedBy] = [Source].[CreatedBy],
	[UpdatedAt] = [Source].[UpdatedAt],
	[UpdatedBy] = [Source].[UpdatedBy]

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
	[r].[Id] = 42

