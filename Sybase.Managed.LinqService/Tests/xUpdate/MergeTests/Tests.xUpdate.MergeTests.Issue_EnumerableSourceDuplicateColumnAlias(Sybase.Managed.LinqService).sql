BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

MERGE INTO [MyChildClass] [Target]
USING (
	SELECT 1 AS [Id], 10 AS [Value_1]
	UNION ALL
	SELECT 2, 20
	UNION ALL
	SELECT 3, 30
	UNION ALL
	SELECT 4, 40) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN NOT MATCHED THEN
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

