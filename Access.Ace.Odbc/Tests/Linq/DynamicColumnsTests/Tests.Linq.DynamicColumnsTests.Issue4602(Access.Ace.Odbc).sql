BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DynamicParent]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [DynamicParent]
(
	[ID] Int  NOT NULL IDENTITY,

	CONSTRAINT [PK_DynamicParent] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DynamicChild]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [DynamicChild]
(
	[ID]       Int  NOT NULL IDENTITY,
	[ParentID] Int  NOT NULL,

	CONSTRAINT [PK_DynamicChild] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[it].[ID]
FROM
	[DynamicParent] [it]
		LEFT JOIN [DynamicChild] [a_Child] ON ([it].[ID] = [a_Child].[ParentID])
WHERE
	[a_Child].[ID] = 123

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DynamicChild]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DynamicParent]

