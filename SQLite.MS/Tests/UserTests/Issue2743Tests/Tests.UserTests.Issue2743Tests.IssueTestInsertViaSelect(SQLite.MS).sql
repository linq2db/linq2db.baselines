BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MessageEventDTO]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MessageEventDTO]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_MessageEventDTO] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MessageEventDTOTb2]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MessageEventDTOTb2]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_MessageEventDTOTb2] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [MessageEventDTOTb2]
(
	[Id]
)
SELECT
	[x].[Id]
FROM
	[MessageEventDTO] [x]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MessageEventDTOTb2]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MessageEventDTO]

