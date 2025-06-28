BeforeExecute
-- SqlServer.2022

MERGE INTO [ReviewIndexes] [Target]
USING (VALUES
	(1)
) [Source]
(
	[Id]
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
	2,
	N'3'
)
;

