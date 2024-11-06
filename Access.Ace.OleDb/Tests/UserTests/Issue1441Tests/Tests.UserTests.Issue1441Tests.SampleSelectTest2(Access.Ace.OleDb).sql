BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Authors]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Authors]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Books]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Books]
(
	[Id]       Int           NOT NULL,
	[AuthorId] Int           NOT NULL,
	[Title]    NVarChar(100) NOT NULL,

	CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON ([book].[AuthorId] = [author].[Id])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Books]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Authors]

