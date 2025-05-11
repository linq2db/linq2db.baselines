BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [ReviewIndexes] [Target]
USING (
	SELECT 1 AS [source_Id]) [Source]
(
	[source_Id]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED AND [Target].[Id] <> [Source].[source_Id] THEN
UPDATE
SET
	[Id] = 2,
	[Value] = '3'

