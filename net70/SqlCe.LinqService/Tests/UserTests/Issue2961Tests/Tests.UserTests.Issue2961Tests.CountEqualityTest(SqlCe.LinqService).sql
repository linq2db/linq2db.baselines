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

