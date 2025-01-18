BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	2,
	N'3'
)
;

