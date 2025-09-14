BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TempTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TempTable]

