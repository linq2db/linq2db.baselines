BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

