BeforeExecute
-- SqlCe

DROP TABLE [Item]

BeforeExecute
-- SqlCe

CREATE TABLE [Item]
(
	[Id]   Int           NOT NULL,
	[Text] NVarChar(255)     NULL,

	CONSTRAINT [PK_Item] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [ItemValue]

BeforeExecute
-- SqlCe

CREATE TABLE [ItemValue]
(
	[Id]     Int     NOT NULL,
	[ItemId] Int     NOT NULL,
	[Value]  Decimal NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Value] as [Total]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
-- SqlCe

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]
		OUTER APPLY (
			SELECT
				SUM([a_Values].[Value]) as [SUM_1]
			FROM
				[ItemValue] [a_Values]
			WHERE
				[x].[Id] = [a_Values].[ItemId]
		) [t1]
ORDER BY
	[t1].[SUM_1]

BeforeExecute
-- SqlCe

DROP TABLE [ItemValue]

BeforeExecute
-- SqlCe

DROP TABLE [Item]

