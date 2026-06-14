-- SqlServer.2012

MERGE INTO [UpsertTest] [Target]
USING (
	SELECT
		[t1].[Id],
		[t1].[Name],
		[t1].[Version] as [Version_1],
		[t1].[CreatedAt],
		[t1].[CreatedBy],
		[t1].[UpdatedAt],
		[t1].[UpdatedBy]
	FROM
		[UpsertSource] [t1]
) [Source]
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
	[Version] = [Target].[Version] + [Source].[Version_1],
	[CreatedAt] = [Source].[CreatedAt],
	[CreatedBy] = [Source].[CreatedBy],
	[UpdatedAt] = [Source].[UpdatedAt],
	[UpdatedBy] = [Source].[UpdatedBy]
;

-- SqlServer.2012

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

