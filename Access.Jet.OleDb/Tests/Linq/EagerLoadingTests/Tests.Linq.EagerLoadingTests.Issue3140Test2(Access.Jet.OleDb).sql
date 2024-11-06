BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3140Parent]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3140Parent]
(
	[Id]      Int NOT NULL,
	[ChildId] Int NOT NULL,

	CONSTRAINT [PK_Issue3140Parent] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3140Child]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue3140Child]
(
	[Id]   Int           NOT NULL,
	[Name] NVarChar(255)     NULL,

	CONSTRAINT [PK_Issue3140Child] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[ChildId],
	[a_Child].[Id],
	[a_Child].[Name]
FROM
	[Issue3140Parent] [t1]
		LEFT JOIN [Issue3140Child] [a_Child] ON ([t1].[ChildId] = [a_Child].[Id])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3140Child]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue3140Parent]

