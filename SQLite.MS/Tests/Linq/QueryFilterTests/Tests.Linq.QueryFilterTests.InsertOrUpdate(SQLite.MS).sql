-- SQLite.MS SQLite

INSERT INTO [Issue5289Table] AS [r]
(
	[Id],
	[PictureId]
)
VALUES
(
	1,
	2
)
ON CONFLICT ([Id]) DO UPDATE SET
	[PictureId] = 3

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[PictureId]
FROM
	[Issue5289Table] [r]
WHERE
	([r].[Deleted] = 0 OR [r].[Deleted] IS NULL) AND [r].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite

INSERT INTO [Issue5289Table] AS [r]
(
	[Id],
	[PictureId]
)
VALUES
(
	1,
	2
)
ON CONFLICT ([Id]) DO UPDATE SET
	[PictureId] = 3

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[PictureId]
FROM
	[Issue5289Table] [r]
WHERE
	([r].[Deleted] = 0 OR [r].[Deleted] IS NULL) AND [r].[Id] = 1
LIMIT 2

