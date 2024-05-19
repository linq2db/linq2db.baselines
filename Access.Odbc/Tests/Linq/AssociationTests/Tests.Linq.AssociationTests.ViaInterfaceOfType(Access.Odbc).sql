BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MainEntity]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [MainEntity]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [SubEntity]
(
	[Id]           Int NOT NULL,
	[MainEntityId] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
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

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [MainEntity]

