BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CtqResultModel]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [CtqResultModel]
(
	[ResultId]     Int  NOT NULL IDENTITY,
	[DefinitionId] Int  NOT NULL,

	CONSTRAINT [PK_CtqResultModel] PRIMARY KEY CLUSTERED ([ResultId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CtqDefinitionModel]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [CtqDefinitionModel]
(
	[DefinitionId] Int  NOT NULL IDENTITY,
	[SetId]        Int  NOT NULL,

	CONSTRAINT [PK_CtqDefinitionModel] PRIMARY KEY CLUSTERED ([DefinitionId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CtqSetModel]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [CtqSetModel]
(
	[SetId]    Int  NOT NULL IDENTITY,
	[SectorId] Int  NOT NULL,

	CONSTRAINT [PK_CtqSetModel] PRIMARY KEY CLUSTERED ([SetId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [FtqSectorModel]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [FtqSectorModel]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_FtqSectorModel] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ResultId],
	[t1].[DefinitionId],
	[a_Definition].[DefinitionId],
	[a_Definition].[SetId],
	[a_Set].[SetId],
	[a_Set].[SectorId],
	[a_Sector].[Id]
FROM
	(([CtqResultModel] [t1]
		INNER JOIN [CtqDefinitionModel] [a_Definition] ON ([t1].[DefinitionId] = [a_Definition].[DefinitionId]))
		LEFT JOIN [CtqSetModel] [a_Set] ON ([a_Definition].[SetId] = [a_Set].[SetId]))
		LEFT JOIN [FtqSectorModel] [a_Sector] ON ([a_Set].[SectorId] = [a_Sector].[Id])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [FtqSectorModel]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CtqSetModel]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CtqDefinitionModel]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [CtqResultModel]

