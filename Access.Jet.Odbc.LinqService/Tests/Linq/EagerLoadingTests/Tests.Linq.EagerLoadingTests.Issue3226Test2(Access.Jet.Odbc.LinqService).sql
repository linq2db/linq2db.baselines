BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Item]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Item]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [ItemValue]
(
	[Id]     Int     NOT NULL,
	[ItemId] Int     NOT NULL,
	[Value]  Decimal NOT NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Id] = [d].[ItemId])

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Item]

