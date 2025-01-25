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
	(
		SELECT
			COUNT(*)
		FROM
			[SubEntity] [a_SubEntities]
		WHERE
			[x].[Id] = [a_SubEntities].[MainEntityId]
	)
FROM
	[MainEntity] [x]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SubEntity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [MainEntity]

