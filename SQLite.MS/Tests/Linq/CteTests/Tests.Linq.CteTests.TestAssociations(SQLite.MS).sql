BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Books]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Books]
(
	[Id]       INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Title]    NVarChar(255)  NOT NULL,
	[AuthorId] INTEGER        NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Authors]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Authors]
(
	[Id]   INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[Name] NVarChar(255)  NOT NULL
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

