BeforeExecute
--  SqlServer.2012

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED By Source AND [Target].[Id] = 3 THEN UPDATE
SET
	[Id] = 2,
	[Value] = N'3'
;

