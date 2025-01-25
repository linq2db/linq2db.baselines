BeforeExecute
-- Access AccessOleDb

DROP TABLE [MessageEventDTO]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [MessageEventDTO]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MessageEventDTO] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [MessageEventDTOTb2]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MessageEventDTOTb2] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [MessageEventDTOTb2]
(
	[Id]
)
SELECT
	[x].[Id]
FROM
	[MessageEventDTO] [x]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [MessageEventDTOTb2]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [MessageEventDTO]

