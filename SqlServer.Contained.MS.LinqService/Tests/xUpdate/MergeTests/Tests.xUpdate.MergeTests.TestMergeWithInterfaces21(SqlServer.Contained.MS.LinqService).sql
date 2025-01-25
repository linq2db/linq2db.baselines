BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])
WHEN NOT MATCHED BY SOURCE AND [Target].[Id] = 3 THEN DELETE
;

