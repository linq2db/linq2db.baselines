BeforeExecute
-- Access AccessOleDb

DROP TABLE [Item]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Item]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ItemValue]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [ItemValue]
(
	[Id]     Int     NOT NULL,
	[ItemId] Int     NOT NULL,
	[Value]  Decimal NOT NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Id] = [d].[ItemId])

BeforeExecute
-- Access AccessOleDb

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ItemValue]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Item]

