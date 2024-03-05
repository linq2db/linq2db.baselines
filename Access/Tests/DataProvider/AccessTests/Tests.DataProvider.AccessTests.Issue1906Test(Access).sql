BeforeExecute
-- Access AccessOleDb

DROP TABLE [CtqResultModel]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CtqResultModel]
(
	[ResultId]     Int  NOT NULL IDENTITY,
	[DefinitionId] Int  NOT NULL,

	CONSTRAINT [PK_CtqResultModel] PRIMARY KEY CLUSTERED ([ResultId])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CtqDefinitionModel]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CtqDefinitionModel]
(
	[DefinitionId] Int  NOT NULL IDENTITY,
	[SetId]        Int  NOT NULL,

	CONSTRAINT [PK_CtqDefinitionModel] PRIMARY KEY CLUSTERED ([DefinitionId])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CtqSetModel]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [CtqSetModel]
(
	[SetId]    Int  NOT NULL IDENTITY,
	[SectorId] Int  NOT NULL,

	CONSTRAINT [PK_CtqSetModel] PRIMARY KEY CLUSTERED ([SetId])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [FtqSectorModel]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [FtqSectorModel]
(
	[Id] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_FtqSectorModel] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[t2].[ResultId],
	[t2].[DefinitionId],
	[a_Definition].[DefinitionId],
	[a_Definition].[SetId],
	[t1].[SetId],
	[t1].[SectorId],
	[t1].[Id]
FROM
	([CtqResultModel] [t2]
		INNER JOIN [CtqDefinitionModel] [a_Definition] ON ([t2].[DefinitionId] = [a_Definition].[DefinitionId]))
		LEFT JOIN (
			SELECT
				[a_Set].[SetId],
				[a_Set].[SectorId],
				[a_Sector].[Id]
			FROM
				[CtqSetModel] [a_Set]
					INNER JOIN [FtqSectorModel] [a_Sector] ON ([a_Set].[SectorId] = [a_Sector].[Id])
		) [t1] ON ([a_Definition].[SetId] = [t1].[SetId])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [FtqSectorModel]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CtqSetModel]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CtqDefinitionModel]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [CtqResultModel]

