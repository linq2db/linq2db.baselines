BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [MainEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [MainEntity]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_MainEntity] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [SubEntity]
(
	[Id]           Int NOT NULL,
	[MainEntityId] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [MainEntity]

