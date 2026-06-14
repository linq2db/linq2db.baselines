-- Sybase.Managed Sybase

MERGE INTO [UpsertTest] [Target]
USING (
	SELECT 1 AS [Id], 'updated' AS [Name], 2 AS [Version_1], CAST(NULL AS DateTime) AS [CreatedAt], CAST(NULL AS NVarChar(255)) AS [CreatedBy], CAST(NULL AS DateTime) AS [UpdatedAt], CAST(NULL AS NVarChar(255)) AS [UpdatedBy]) [Source]
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
	[r].[Id] = 1

