BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

