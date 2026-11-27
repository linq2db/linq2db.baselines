-- SQLite.Classic.MPU SQLite.Classic SQLite
INSERT INTO [SoftDeletedPictureTable] AS [t1]
(
	[Id],
	[PictureId],
	[Deleted]
)
VALUES
(
	1,
	2,
	0
)
ON CONFLICT ([Id]) DO UPDATE SET
	[PictureId] = 3

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1
LIMIT 2

-- SQLite.Classic.MPU SQLite.Classic SQLite
INSERT INTO [SoftDeletedPictureTable] AS [t1]
(
	[Id],
	[PictureId],
	[Deleted]
)
VALUES
(
	1,
	2,
	0
)
ON CONFLICT ([Id]) DO UPDATE SET
	[PictureId] = 3

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[SoftDeletedPictureTable] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1
LIMIT 2

