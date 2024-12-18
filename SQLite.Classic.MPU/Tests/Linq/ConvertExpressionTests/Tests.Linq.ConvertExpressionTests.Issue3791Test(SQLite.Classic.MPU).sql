BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3791Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3791Table]
(
	[Id]      INTEGER        NOT NULL PRIMARY KEY AUTOINCREMENT,
	[OtherId] NVarChar(255)      NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3791GuidTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3791GuidTable]
(
	[Id] Guid NOT NULL,

	CONSTRAINT [PK_Issue3791GuidTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[OtherId],
	[a_Association].[Id]
FROM
	[Issue3791Table] [t1]
		LEFT JOIN [Issue3791GuidTable] [a_Association] ON [t1].[OtherId] = CAST([a_Association].[Id] AS NVarChar(36)) AND [t1].[OtherId] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3791GuidTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3791Table]

