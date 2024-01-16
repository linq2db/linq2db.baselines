﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Adsl]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Adsl]
(
	[Id]       INTEGER NOT NULL,
	[IdClient] INTEGER     NULL,

	CONSTRAINT [PK_Adsl] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Client]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Client]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_Client] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[adsl_1].[Id]
FROM
	[Adsl] [adsl_1]
		INNER JOIN [Client] [client_1] ON [adsl_1].[IdClient] = [client_1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Client]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Adsl]

