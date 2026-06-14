-- SqlServer.2012.MS SqlServer.2012

MERGE INTO [UpsertTest] [Target]
USING (VALUES
	(1,N'x',1,CAST(NULL AS DateTime2),CAST(NULL AS NVarChar(4000)),CAST(NULL AS DateTime2),CAST(NULL AS NVarChar(4000)))
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

WHEN MATCHED THEN
UPDATE
SET
	[Name] = [Source].[Name],
	[Version] = [Source].[Version_1],
	[CreatedAt] = [Source].[CreatedAt],
	[CreatedBy] = [Source].[CreatedBy],
	[UpdatedAt] = [Source].[UpdatedAt],
	[UpdatedBy] = [Source].[UpdatedBy]
;

-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[UpsertTest] [r]
		WHERE
			[r].[Id] = 1
	), 1, 0)

