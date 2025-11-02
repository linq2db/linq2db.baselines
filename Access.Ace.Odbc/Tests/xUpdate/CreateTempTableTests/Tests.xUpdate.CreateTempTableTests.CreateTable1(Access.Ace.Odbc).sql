-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

