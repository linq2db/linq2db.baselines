BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1,N'2')
) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED AND [Source].[Id] > 1 THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[Id],
	[Source].[Value_1]
)
;

