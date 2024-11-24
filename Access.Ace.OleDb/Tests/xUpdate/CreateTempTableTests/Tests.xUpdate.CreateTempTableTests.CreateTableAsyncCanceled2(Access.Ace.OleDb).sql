BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TempTable]

