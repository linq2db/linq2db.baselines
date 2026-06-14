-- SqlServer.2014

MERGE INTO [UpsertTest] [Target]
USING (VALUES
	(N'alice',99,42,CAST(NULL AS DateTime2),CAST(NULL AS NVarChar(4000)),CAST(NULL AS DateTime2),CAST(NULL AS NVarChar(4000)))
) [Source]
(
	[Name],
	[Id],
	[Version_1],
	[CreatedAt],
	[CreatedBy],
	[UpdatedAt],
	[UpdatedBy]
)
ON ([Target].[Name] = [Source].[Name] OR [Target].[Name] IS NULL AND [Source].[Name] IS NULL)

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
	[Version] = [Source].[Version_1],
	[CreatedAt] = [Source].[CreatedAt],
	[CreatedBy] = [Source].[CreatedBy],
	[UpdatedAt] = [Source].[UpdatedAt],
	[UpdatedBy] = [Source].[UpdatedBy]
;

-- SqlServer.2014

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
	[r].[Name] = N'alice'

-- SqlServer.2014

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
	[r].[Name] = N'bob'

