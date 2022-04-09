﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Adsl]
(
	[Id]       INTEGER NOT NULL,
	[IdClient] INTEGER     NULL,

	CONSTRAINT [PK_Adsl] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [Client]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Client] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[adsl_1].[Id]
FROM
	[Adsl] [adsl_1]
		INNER JOIN [Client] [client_1] ON [adsl_1].[IdClient] = [client_1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Client]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Adsl]

