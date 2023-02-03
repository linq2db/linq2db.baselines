BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CacheTestTable') IS NOT NULL)
	DROP TABLE [CacheTestTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CacheTestTable') IS NULL)
	EXECUTE('
		CREATE TABLE [CacheTestTable]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL,

			CONSTRAINT [PK_CacheTestTable] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [CacheTestTable] [Target]
USING
(
	SELECT 1 AS [Id], 1 AS [Value_1]
	UNION ALL
	SELECT 2, 2) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[Value] = [Source].[Value_1]

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
USING
(
	SELECT 1 AS [Id], 1 AS [Value_1]
	UNION ALL
	SELECT 2, 4
	UNION ALL
	SELECT 3, 3) [Source]
(
	[Id],
	[Value_1]
)
ON ([Target].[Id] = [Source].[Id])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[Value] = [Source].[Value_1]

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

IF (OBJECT_ID(N'CacheTestTable') IS NOT NULL)
	DROP TABLE [CacheTestTable]

