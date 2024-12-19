BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Condos]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Condos]
(
	[Id]         Int NOT NULL,
	[LocationId] Int NOT NULL,

	CONSTRAINT [PK_Condos] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [CategoryCondos]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [CategoryCondos]
(
	[CategoryId] Int NOT NULL,
	[CondoId]    Int NOT NULL,

	CONSTRAINT [PK_CategoryCondos] PRIMARY KEY CLUSTERED ([CategoryId], [CondoId])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [CondoTags]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [CondoTags]
(
	[CondoId] Int NOT NULL,
	[TagId]   Int NOT NULL,

	CONSTRAINT [PK_CondoTags] PRIMARY KEY CLUSTERED ([CondoId], [TagId])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Locations]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Locations]
(
	[Id]           Int           NOT NULL,
	[LocationName] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[subcc].[CountCondoCategories],
	[subct].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	(([Condos] [c_1]
		INNER JOIN [Locations] [l] ON ([c_1].[LocationId] = [l].[Id]))
		LEFT JOIN (
			SELECT
				[g2].[CondoId] as [Key_1],
				COUNT(*) as [CountCondoTags]
			FROM
				[CondoTags] [g2]
			GROUP BY
				[g2].[CondoId]
		) [subct] ON ([c_1].[Id] = [subct].[Key_1]))
		LEFT JOIN (
			SELECT
				[g1].[CondoId] as [Key_1],
				COUNT(*) as [CountCondoCategories]
			FROM
				[CategoryCondos] [g1]
			GROUP BY
				[g1].[CondoId]
		) [subcc] ON ([c_1].[Id] = [subcc].[Key_1])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Locations]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [CondoTags]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [CategoryCondos]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Condos]

