-- SQLite.MS SQLite

INSERT INTO [InsertEntity]
(
	[Id],
	[Name],
	[IsDeleted]
)
SELECT
	[e].[Id] + 100,
	[e].[Name],
	[e].[IsDeleted]
FROM
	[InsertEntity] [e]
WHERE
	NOT [e].[IsDeleted]

-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[InsertEntity] [e]
WHERE
	NOT [e].[IsDeleted]

