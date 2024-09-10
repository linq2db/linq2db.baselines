BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DynamicParent]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DynamicParent]
(
	[ID] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_DynamicParent] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DynamicChild]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [DynamicChild]
(
	[ID]       Int  NOT NULL IDENTITY,
	[ParentID] Int  NOT NULL,

	CONSTRAINT [PK_DynamicChild] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DynamicChild]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DynamicParent]

