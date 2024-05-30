BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

