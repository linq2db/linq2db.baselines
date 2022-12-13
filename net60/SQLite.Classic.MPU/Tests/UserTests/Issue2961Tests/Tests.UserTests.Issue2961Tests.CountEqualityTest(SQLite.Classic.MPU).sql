BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Condos]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Condos]
(
	[Id]         INTEGER NOT NULL,
	[LocationId] INTEGER NOT NULL,

	CONSTRAINT [PK_Condos] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CategoryCondos]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CategoryCondos]
(
	[CategoryId] INTEGER NOT NULL,
	[CondoId]    INTEGER NOT NULL,

	CONSTRAINT [PK_CategoryCondos] PRIMARY KEY ([CategoryId], [CondoId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CondoTags]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [CondoTags]
(
	[CondoId] INTEGER NOT NULL,
	[TagId]   INTEGER NOT NULL,

	CONSTRAINT [PK_CondoTags] PRIMARY KEY ([CondoId], [TagId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Locations]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Locations]
(
	[Id]           INTEGER       NOT NULL,
	[LocationName] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Locations] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[t4].[CountCondoCategories],
	[t2].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[ctleft].[CondoId] as [subct],
				[ctleft].[CountCondoTags]
			FROM
				(
					SELECT
						[t1].[CondoId],
						Count(*) as [CountCondoTags]
					FROM
						[CondoTags] [t1]
					GROUP BY
						[t1].[CondoId]
				) [ctleft]
		) [t2] ON [c_1].[Id] = [t2].[subct]
		LEFT JOIN (
			SELECT
				[ccleft].[CondoId] as [subcc],
				[ccleft].[CountCondoCategories]
			FROM
				(
					SELECT
						[t3].[CondoId],
						Count(*) as [CountCondoCategories]
					FROM
						[CategoryCondos] [t3]
					GROUP BY
						[t3].[CondoId]
				) [ccleft]
		) [t4] ON [c_1].[Id] = [t4].[subcc]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Locations]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CondoTags]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [CategoryCondos]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Condos]

