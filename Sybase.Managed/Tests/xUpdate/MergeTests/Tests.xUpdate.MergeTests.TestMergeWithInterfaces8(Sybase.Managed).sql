-- Sybase.Managed Sybase

MERGE INTO [ReviewIndexes] [Target]
USING (
	SELECT 1 AS [Id]) [Source]
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
	'3'
)

