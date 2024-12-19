BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3140Parent]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3140Parent]
(
	[Id]      INTEGER NOT NULL,
	[ChildId] INTEGER NOT NULL,

	CONSTRAINT [PK_Issue3140Parent] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3140Child]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue3140Child]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue3140Child] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[ChildId],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [t1]
		LEFT JOIN [Issue3140Child] [a_Child] ON [t1].[ChildId] = [a_Child].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3140Child]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3140Parent]

