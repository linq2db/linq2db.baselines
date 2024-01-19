BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Condos]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Condos]
(
	[Id]         INTEGER NOT NULL,
	[LocationId] INTEGER NOT NULL,

	CONSTRAINT [PK_Condos] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CategoryCondos]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CategoryCondos]
(
	[CategoryId] INTEGER NOT NULL,
	[CondoId]    INTEGER NOT NULL,

	CONSTRAINT [PK_CategoryCondos] PRIMARY KEY ([CategoryId], [CondoId])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CondoTags]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [CondoTags]
(
	[CondoId] INTEGER NOT NULL,
	[TagId]   INTEGER NOT NULL,

	CONSTRAINT [PK_CondoTags] PRIMARY KEY ([CondoId], [TagId])
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Locations]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Locations]
(
	[Id]           INTEGER       NOT NULL,
	[LocationName] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Locations] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[t2].[CountCondoCategories],
	[t1].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[ctleft].[CondoId] as [subct],
				Count(*) as [CountCondoTags]
			FROM
				[CondoTags] [ctleft]
			GROUP BY
				[ctleft].[CondoId]
		) [t1] ON [c_1].[Id] = [t1].[subct]
		LEFT JOIN (
			SELECT
				[ccleft].[CondoId] as [subcc],
				Count(*) as [CountCondoCategories]
			FROM
				[CategoryCondos] [ccleft]
			GROUP BY
				[ccleft].[CondoId]
		) [t2] ON [c_1].[Id] = [t2].[subcc]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Locations]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CondoTags]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [CategoryCondos]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Condos]

