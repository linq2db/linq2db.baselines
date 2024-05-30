BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Adsl]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Adsl]
(
	[Id]       INTEGER NOT NULL,
	[IdClient] INTEGER     NULL,

	CONSTRAINT [PK_Adsl] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Client]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Client]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Client] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[serv].[Id]
FROM
	[Adsl] [serv]
		INNER JOIN [Client] [client_1] ON [serv].[IdClient] = [client_1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Client]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Adsl]

