BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Entity1711]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Entity1711]
(
	[Id] BigInt NOT NULL,

	CONSTRAINT [PK_Entity1711] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Relationship1711]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Relationship1711]
(
	[EntityId] BigInt NOT NULL,
	[Deleted]  Bit    NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id]
FROM
	[Entity1711] [t]
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[Relationship1711] [a_relationship]
		WHERE
			[t].[Id] = [a_relationship].[EntityId]
	)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Relationship1711]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Entity1711]

