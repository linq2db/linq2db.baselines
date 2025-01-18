BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [CacheTestTable] [Target]
USING (
	SELECT 1 AS [source_Id], 1 AS [source_Value]
	UNION ALL
	SELECT 2, 2) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[source_Value]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_Value]
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CacheTestTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [CacheTestTable] [Target]
USING (
	SELECT 1 AS [source_Id], 1 AS [source_Value]
	UNION ALL
	SELECT 2, 4
	UNION ALL
	SELECT 3, 3) [Source]
(
	[source_Id],
	[source_Value]
)
ON ([Target].[Id] = [Source].[source_Id])

WHEN MATCHED THEN
UPDATE
SET
	[Value] = [Source].[source_Value]

WHEN NOT MATCHED THEN
INSERT
(
	[Id],
	[Value]
)
VALUES
(
	[Source].[source_Id],
	[Source].[source_Value]
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CacheTestTable] [t1]
ORDER BY
	[t1].[Id]

