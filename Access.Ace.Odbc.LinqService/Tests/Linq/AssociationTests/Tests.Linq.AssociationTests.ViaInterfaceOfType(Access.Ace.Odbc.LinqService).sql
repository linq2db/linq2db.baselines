BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [MainEntity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [MainEntity]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [SubEntity]
(
	[Id]           Int NOT NULL,
	[MainEntityId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[SubEntity] [a_SubEntities]
		WHERE
			[x].[Id] = [a_SubEntities].[MainEntityId]
	)
FROM
	[MainEntity] [x]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [MainEntity]

