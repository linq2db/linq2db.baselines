BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
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
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

DROP TABLE [TempTable]

