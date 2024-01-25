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
		LEFT JOIN [Issue3791GuidTable] [a_Association] ON [t1].[OtherId] = (substr(hex([a_Association].[Id]), 7, 2) || substr(hex([a_Association].[Id]), 5, 2) || substr(hex([a_Association].[Id]), 3, 2) || substr(hex([a_Association].[Id]), 1, 2) || '-' || substr(hex([a_Association].[Id]), 11, 2) || substr(hex([a_Association].[Id]), 9, 2) || '-' || substr(hex([a_Association].[Id]), 15, 2) || substr(hex([a_Association].[Id]), 13, 2) || '-' || substr(hex([a_Association].[Id]), 17, 4) || '-' || substr(hex([a_Association].[Id]), 21, 12))

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3791GuidTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3791Table]

