BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

DROP TABLE [TempTable]

