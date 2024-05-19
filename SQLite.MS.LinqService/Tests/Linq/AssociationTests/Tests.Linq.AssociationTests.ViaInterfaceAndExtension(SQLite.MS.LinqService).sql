BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainEntity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [MainEntity]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SubEntity]
(
	[Id]           INTEGER NOT NULL,
	[MainEntityId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[x].[Id],
	(
		SELECT
			Count(*)
		FROM
			[SubEntity] [t1]
		WHERE
			[x].[Id] = [t1].[MainEntityId]
	)
FROM
	[MainEntity] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[SubEntity] [t2]
		WHERE
			[x].[Id] = [t2].[MainEntityId]
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainEntity]

