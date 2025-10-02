BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

