BeforeExecute
-- SqlCe

DROP TABLE [Condos]

BeforeExecute
-- SqlCe

CREATE TABLE [Condos]
(
	[Id]         Int NOT NULL,
	[LocationId] Int NOT NULL,

	CONSTRAINT [PK_Condos] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [CategoryCondos]

BeforeExecute
-- SqlCe

CREATE TABLE [CategoryCondos]
(
	[CategoryId] Int NOT NULL,
	[CondoId]    Int NOT NULL,

	CONSTRAINT [PK_CategoryCondos] PRIMARY KEY ([CategoryId], [CondoId])
)

BeforeExecute
-- SqlCe

DROP TABLE [CondoTags]

BeforeExecute
-- SqlCe

CREATE TABLE [CondoTags]
(
	[CondoId] Int NOT NULL,
	[TagId]   Int NOT NULL,

	CONSTRAINT [PK_CondoTags] PRIMARY KEY ([CondoId], [TagId])
)

BeforeExecute
-- SqlCe

DROP TABLE [Locations]

BeforeExecute
-- SqlCe

CREATE TABLE [Locations]
(
	[Id]           Int           NOT NULL,
	[LocationName] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Locations] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

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
-- SqlCe

DROP TABLE [Locations]

BeforeExecute
-- SqlCe

DROP TABLE [CondoTags]

BeforeExecute
-- SqlCe

DROP TABLE [CategoryCondos]

BeforeExecute
-- SqlCe

DROP TABLE [Condos]

