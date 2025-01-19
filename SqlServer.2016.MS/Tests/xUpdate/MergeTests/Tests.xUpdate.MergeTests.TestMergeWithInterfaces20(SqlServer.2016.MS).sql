BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])
WHEN NOT MATCHED BY SOURCE THEN DELETE
;

