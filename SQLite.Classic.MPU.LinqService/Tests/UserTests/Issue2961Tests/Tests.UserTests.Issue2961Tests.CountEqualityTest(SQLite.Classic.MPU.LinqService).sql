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
	[subcc].[CountCondoCategories],
	[subct].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[g2].[CondoId],
				COUNT(*) as [CountCondoTags]
			FROM
				[CondoTags] [g2]
			GROUP BY
				[g2].[CondoId]
		) [subct] ON [c_1].[Id] = [subct].[CondoId]
		LEFT JOIN (
			SELECT
				[g1].[CondoId],
				COUNT(*) as [CountCondoCategories]
			FROM
				[CategoryCondos] [g1]
			GROUP BY
				[g1].[CondoId]
		) [subcc] ON [c_1].[Id] = [subcc].[CondoId]

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

