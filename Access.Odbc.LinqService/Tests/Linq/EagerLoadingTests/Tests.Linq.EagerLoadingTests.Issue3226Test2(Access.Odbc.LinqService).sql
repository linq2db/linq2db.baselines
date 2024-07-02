BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Item]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Item]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [ItemValue]
(
	[Id]     Int     NOT NULL,
	[ItemId] Int     NOT NULL,
	[Value]  Decimal NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Id] = [d].[ItemId])

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Item]

