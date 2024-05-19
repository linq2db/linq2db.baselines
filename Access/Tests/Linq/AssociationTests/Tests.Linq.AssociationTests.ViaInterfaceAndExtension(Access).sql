BeforeExecute
-- Access AccessOleDb

DROP TABLE [MainEntity]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [MainEntity]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [SubEntity]
(
	[Id]           Int NOT NULL,
	[MainEntityId] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[x].[Id],
	[t2].[Count_1]
FROM
	[MainEntity] [x]
		LEFT JOIN (
			SELECT
				Count(*) as [Count_1],
				[t1].[MainEntityId]
			FROM
				[SubEntity] [t1]
			GROUP BY
				[t1].[MainEntityId]
		) [t2] ON ([x].[Id] = [t2].[MainEntityId])
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[SubEntity] [t3]
		WHERE
			[x].[Id] = [t3].[MainEntityId]
	)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [MainEntity]

