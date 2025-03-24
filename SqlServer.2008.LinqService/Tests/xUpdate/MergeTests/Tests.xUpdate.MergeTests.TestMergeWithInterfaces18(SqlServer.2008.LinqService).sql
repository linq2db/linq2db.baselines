BeforeExecute
--  SqlServer.2008

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED BY SOURCE THEN UPDATE
SET
	[Id] = 2,
	[Value] = N'3'
;

