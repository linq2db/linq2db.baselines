-- Sybase.Managed Sybase

MERGE INTO [UpsertTest] [Target]
USING (
	SELECT 1 AS [Id], 'one' AS [Name], 2 AS [Version_1], CAST(NULL AS DateTime) AS [CreatedAt], CAST(NULL AS NVarChar(255)) AS [CreatedBy], CAST(NULL AS DateTime) AS [UpdatedAt], CAST(NULL AS NVarChar(255)) AS [UpdatedBy]
	UNION ALL
	SELECT 2, 'two', 1, NULL, NULL, NULL, NULL) [Source]
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
	[Source].[Id],
	[Source].[Name],
	[Source].[Version_1],
	[Source].[CreatedAt],
	[Source].[CreatedBy],
	[Source].[UpdatedAt],
	[Source].[UpdatedBy]
)

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

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]
ORDER BY
	[t1].[Id]

