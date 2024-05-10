BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMA]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityMA]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMA] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityMB]
(
	[Id]  INTEGER NOT NULL,
	[FK]  INTEGER     NULL,
	[FKD] INTEGER     NULL,

	CONSTRAINT [PK_EntityMB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityMC]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMC] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [EntityMD]
(
	[Id] INTEGER NOT NULL,
	[FK] INTEGER     NULL,

	CONSTRAINT [PK_EntityMD] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[lw_EntityMB].[Id_1],
	[lw_EntityMB].[Id],
	[detail_1].[Id],
	[detail_1].[FK]
FROM
	(
		SELECT DISTINCT
			[detail].[Id],
			[lw_EntityMA].[Id] as [Id_1]
		FROM
			[EntityMA] [lw_EntityMA]
				INNER JOIN [EntityMB] [detail] ON [lw_EntityMA].[Id] = [detail].[FK]
	) [lw_EntityMB]
		INNER JOIN [EntityMC] [detail_1] ON [lw_EntityMB].[Id] = [detail_1].[FK]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[lw_EntityMA].[Id],
	[detail].[Id],
	[detail].[FK],
	[detail].[FKD],
	[a_ObjectD].[Id],
	[a_ObjectD].[FK]
FROM
	[EntityMA] [lw_EntityMA]
		INNER JOIN [EntityMB] [detail] ON [lw_EntityMA].[Id] = [detail].[FK]
		LEFT JOIN [EntityMD] [a_ObjectD] ON [detail].[FKD] = [a_ObjectD].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[FK]
FROM
	[EntityMA] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMD]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMC]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMB]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [EntityMA]

