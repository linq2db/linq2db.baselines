﻿BeforeExecute
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
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[x].[Id]
				FROM
					[Item] [x]
			) [t1]
	) [m_1]
		INNER JOIN [ItemValue] [d] ON ([m_1].[Id] = [d].[ItemId])

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[x_1].[Id],
	[x_1].[Text]
FROM
	(
		SELECT
			[x].[Id],
			[x].[Text],
			(
				SELECT
					SUM([a_Values].[Value])
				FROM
					[ItemValue] [a_Values]
				WHERE
					[x].[Id] = [a_Values].[ItemId]
			) as [c1]
		FROM
			[Item] [x]
	) [x_1]
ORDER BY
	IIF([x_1].[c1] IS NULL, 0, [x_1].[c1])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [ItemValue]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Item]

