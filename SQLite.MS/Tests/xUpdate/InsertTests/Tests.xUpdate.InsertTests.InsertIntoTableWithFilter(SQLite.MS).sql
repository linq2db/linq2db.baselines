BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [InsertEntity]
(
	[Id],
	[Name],
	[IsDeleted]
)
VALUES
(
	1,
	'test',
	0
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[e].[Id],
	[e].[Name],
	[e].[IsDeleted]
FROM
	[InsertEntity] [e]
WHERE
	NOT [e].[IsDeleted] AND [e].[Id] = 1
LIMIT 2

