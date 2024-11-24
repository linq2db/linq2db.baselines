BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4454Client]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4454Client]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4454Service]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4454Service]
(
	[Id]       INTEGER NOT NULL,
	[IdClient] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[a_Client2].[Name]
FROM
	[Issue4454Service] [s]
		INNER JOIN [Issue4454Client] [a_Client2] ON [a_Client2].[Id] = [s].[IdClient]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4454Service]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4454Client]

