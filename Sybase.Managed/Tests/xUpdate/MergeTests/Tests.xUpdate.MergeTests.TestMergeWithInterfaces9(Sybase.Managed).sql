BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [ReviewIndexes] [Target]
USING (
	SELECT 1 AS [source_Id], '2' AS [source_Value]) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED AND [Target].[Id] <> [Source].[source_Id] THEN
UPDATE
SET
	[Value] = [Source].[source_Value]

