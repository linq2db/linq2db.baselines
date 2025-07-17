BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [TableWithIdentity] [Target]
USING (
	SELECT 1 AS [Id], 2 AS [Value_1]) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[Value_1]

WHEN NOT MATCHED THEN
INSERT
(
	[Value]
)
VALUES
(
	[Source].[Value_1]
)

