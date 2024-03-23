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
	[subcc].[CountCondoCategories],
	[subct].[CountCondoTags],
	[l].[LocationName],
	[l].[Id] as [Id_1]
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

