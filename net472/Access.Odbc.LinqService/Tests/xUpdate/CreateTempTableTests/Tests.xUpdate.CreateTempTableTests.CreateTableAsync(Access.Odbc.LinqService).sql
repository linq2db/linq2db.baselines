BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [TempTable]
(
	[ID]
)
SELECT 
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

