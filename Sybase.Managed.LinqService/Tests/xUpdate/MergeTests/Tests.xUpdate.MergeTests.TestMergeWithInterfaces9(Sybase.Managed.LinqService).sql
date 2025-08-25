BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

MERGE INTO [ReviewIndexes] [Target]
USING (
	SELECT 1 AS [Id], '2' AS [Value_1]) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED AND [Target].[Id] <> [Source].[Id] THEN
UPDATE
SET
	[Value] = [Source].[Value_1]

