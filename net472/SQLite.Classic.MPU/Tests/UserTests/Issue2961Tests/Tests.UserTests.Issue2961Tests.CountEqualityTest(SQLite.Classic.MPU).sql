BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Condos]
(
	[Id]         INTEGER NOT NULL,
	[LocationId] INTEGER NOT NULL,

	CONSTRAINT [PK_Condos] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [CategoryCondos]
(
	[CategoryId] INTEGER NOT NULL,
	[CondoId]    INTEGER NOT NULL,

	CONSTRAINT [PK_CategoryCondos] PRIMARY KEY ([CategoryId], [CondoId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [CondoTags]
(
	[CondoId] INTEGER NOT NULL,
	[TagId]   INTEGER NOT NULL,

	CONSTRAINT [PK_CondoTags] PRIMARY KEY ([CondoId], [TagId])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Locations]
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
	[ccleft].[CountCondoCategories],
	[ctleft].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	[Condos] [c_1]
		INNER JOIN [Locations] [l] ON [c_1].[LocationId] = [l].[Id]
		LEFT JOIN (
			SELECT
				[t1].[CondoId],
				Count(*) as [CountCondoTags]
			FROM
				[CondoTags] [t1]
			GROUP BY
				[t1].[CondoId]
		) [ctleft] ON [c_1].[Id] = [ctleft].[CondoId]
		LEFT JOIN (
			SELECT
				[t2].[CondoId],
				Count(*) as [CountCondoCategories]
			FROM
				[CategoryCondos] [t2]
			GROUP BY
				[t2].[CondoId]
		) [ccleft] ON [c_1].[Id] = [ccleft].[CondoId]

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

