BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3791Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3791Table]
(
	[Id]      INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[OtherId] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3791GuidTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue3791GuidTable]
(
	[Id] Guid NOT NULL,

	CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t2].[Id],
	[t2].[OtherId],
	[t1].[Id]
FROM
	[Issue3791Table] [t2]
		LEFT JOIN (
			SELECT
				[a_Association].[Id],
				Cast([a_Association].[Id] as NVarChar(255)) as [c1]
			FROM
				[Issue3791GuidTable] [a_Association]
		) [t1] ON ([t2].[OtherId] = [t1].[c1] OR [t2].[OtherId] IS NULL AND [t1].[c1] IS NULL)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3791GuidTable]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue3791Table]

