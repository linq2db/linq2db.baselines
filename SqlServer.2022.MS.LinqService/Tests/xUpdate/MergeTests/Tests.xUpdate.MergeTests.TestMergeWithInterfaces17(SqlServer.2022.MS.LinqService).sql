BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])
WHEN MATCHED AND [Target].[Id] = [Source].[Id] THEN DELETE
;

