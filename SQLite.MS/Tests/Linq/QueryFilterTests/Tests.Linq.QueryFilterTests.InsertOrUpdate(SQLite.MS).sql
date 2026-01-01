-- SQLite.MS SQLite

INSERT INTO [Issue5289Table] AS [t1]
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

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite

INSERT INTO [Issue5289Table] AS [t1]
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

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[PictureId],
	[r].[Deleted]
FROM
	[Issue5289Table] [r]
WHERE
	NOT [r].[Deleted] AND [r].[Id] = 1
LIMIT 2

