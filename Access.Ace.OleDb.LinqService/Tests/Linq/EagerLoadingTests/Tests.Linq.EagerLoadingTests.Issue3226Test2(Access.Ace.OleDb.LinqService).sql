BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Item]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Item]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [ItemValue]
(
	[Id]     Int     NOT NULL,
	[ItemId] Int     NOT NULL,
	[Value]  Decimal NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Id] = [d].[ItemId])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Item]

