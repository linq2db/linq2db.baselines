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
	[p].[Id],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [p]
		LEFT JOIN [Issue3140Child] [a_Child] ON [p].[ChildId] = [a_Child].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3140Child]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue3140Parent]

