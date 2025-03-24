BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])
WHEN MATCHED AND [Target].[Id] = [Source].[source_Id] THEN DELETE
;

