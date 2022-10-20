BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Authors]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Books]
(
	[Id]       INTEGER       NOT NULL,
	[AuthorId] INTEGER       NOT NULL,
	[Title]    NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON [book].[AuthorId] = [author].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Authors]

