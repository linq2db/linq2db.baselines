BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Books]
(
	[Id]       INTEGER       NOT NULL,
	[Title]    NVarChar(255) NOT NULL,
	[AuthorId] INTEGER       NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Authors]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

WITH [BooksCte] ([AuthorId], [Title])
AS
(
	SELECT
		[t1].[AuthorId],
		[t1].[Title]
	FROM
		[Books] [t1]
)
SELECT
	[b].[Title]
FROM
	[BooksCte] [b]
		INNER JOIN [Authors] [a_Author] ON [b].[AuthorId] = [a_Author].[Id]
WHERE
	[a_Author].[Name] = 'Steven'

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Books]

