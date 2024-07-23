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
	[d].[Id],
	[d].[ItemId],
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
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Text]
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
			) as [SUM_1]
		FROM
			[Item] [x]
	) [t1]
ORDER BY
	IIF([t1].[SUM_1] IS NULL, 0, [t1].[SUM_1])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [ItemValue]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Item]

