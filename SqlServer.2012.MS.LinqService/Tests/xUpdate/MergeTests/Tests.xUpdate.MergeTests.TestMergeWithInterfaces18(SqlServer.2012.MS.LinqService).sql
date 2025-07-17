BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[Id]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED By Source THEN UPDATE
SET
	[Id] = 2,
	[Value] = N'3'
;

