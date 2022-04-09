BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Condos]
(
	[Id]         Int NOT NULL,
	[LocationId] Int NOT NULL,

	CONSTRAINT [PK_Condos] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [CategoryCondos]
(
	[CategoryId] Int NOT NULL,
	[CondoId]    Int NOT NULL,

	CONSTRAINT [PK_CategoryCondos] PRIMARY KEY CLUSTERED ([CategoryId], [CondoId])
)

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [CondoTags]
(
	[CondoId] Int NOT NULL,
	[TagId]   Int NOT NULL,

	CONSTRAINT [PK_CondoTags] PRIMARY KEY CLUSTERED ([CondoId], [TagId])
)

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Locations]
(
	[Id]           Int           NOT NULL,
	[LocationName] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[c_1].[Id],
	[c_1].[LocationId],
	[ccleft].[CountCondoCategories],
	[ctleft].[CountCondoTags],
	[l].[LocationName],
	[l].[Id]
FROM
	(([Condos] [c_1]
		INNER JOIN [Locations] [l] ON ([c_1].[LocationId] = [l].[Id]))
		LEFT JOIN (
			SELECT
				[t1].[CondoId],
				Count(*) as [CountCondoTags]
			FROM
				[CondoTags] [t1]
			GROUP BY
				[t1].[CondoId]
		) [ctleft] ON ([c_1].[Id] = [ctleft].[CondoId]))
		LEFT JOIN (
			SELECT
				[t2].[CondoId],
				Count(*) as [CountCondoCategories]
			FROM
				[CategoryCondos] [t2]
			GROUP BY
				[t2].[CondoId]
		) [ccleft] ON ([c_1].[Id] = [ccleft].[CondoId])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Locations]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [CondoTags]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [CategoryCondos]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Condos]

