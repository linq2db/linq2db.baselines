BeforeExecute
-- Access AccessOleDb

DROP TABLE [DynamicParent]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DynamicParent]
(
	[ID] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_DynamicParent] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DynamicChild]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [DynamicChild]
(
	[ID]       Int  NOT NULL IDENTITY,
	[ParentID] Int  NOT NULL,

	CONSTRAINT [PK_DynamicChild] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DynamicChild]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [DynamicParent]

