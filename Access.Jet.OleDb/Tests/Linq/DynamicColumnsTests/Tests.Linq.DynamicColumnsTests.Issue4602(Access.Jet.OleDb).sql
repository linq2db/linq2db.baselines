BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DynamicParent]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DynamicParent]
(
	[ID] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_DynamicParent] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DynamicChild]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DynamicChild]
(
	[ID]       Int  NOT NULL IDENTITY,
	[ParentID] Int  NOT NULL,

	CONSTRAINT [PK_DynamicChild] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[it].[ID]
FROM
	[DynamicParent] [it]
		LEFT JOIN [DynamicChild] [a_Child] ON ([it].[ID] = [a_Child].[ParentID])
WHERE
	[a_Child].[ID] = 123 AND [a_Child].[ID] IS NOT NULL

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DynamicChild]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DynamicParent]

