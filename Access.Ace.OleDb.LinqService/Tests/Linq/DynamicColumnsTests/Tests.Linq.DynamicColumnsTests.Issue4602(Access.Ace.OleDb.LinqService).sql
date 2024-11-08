BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DynamicParent]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DynamicParent]
(
	[ID] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_DynamicParent] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DynamicChild]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DynamicChild]
(
	[ID]       Int  NOT NULL IDENTITY,
	[ParentID] Int  NOT NULL,

	CONSTRAINT [PK_DynamicChild] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DynamicChild]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DynamicParent]

