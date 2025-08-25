BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])
WHEN MATCHED THEN DELETE
;

