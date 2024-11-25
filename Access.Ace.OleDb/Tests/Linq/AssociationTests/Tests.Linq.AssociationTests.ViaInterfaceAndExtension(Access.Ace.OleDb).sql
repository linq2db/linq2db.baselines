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
	[x].[Id],
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
WHERE
	EXISTS(
		SELECT
			1
		FROM
			[SubEntity] [a_SubEntities_1]
		WHERE
			[x].[Id] = [a_SubEntities_1].[MainEntityId]
	)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [SubEntity]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [MainEntity]

