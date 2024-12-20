BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3140Parent]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue3140Parent]
(
	[Id]      Int NOT NULL,
	[ChildId] Int NOT NULL,

	CONSTRAINT [PK_Issue3140Parent] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3140Child]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Issue3140Child]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue3140Child] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[Id],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [p]
		LEFT JOIN [Issue3140Child] [a_Child] ON ([p].[ChildId] = [a_Child].[Id])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3140Child]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Issue3140Parent]

