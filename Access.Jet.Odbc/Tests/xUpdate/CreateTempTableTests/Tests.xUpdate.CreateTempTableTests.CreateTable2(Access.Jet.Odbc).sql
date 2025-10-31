-- Access.Jet.Odbc AccessODBC

DROP TABLE [TempTable]

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

-- Access.Jet.Odbc AccessODBC

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

-- Access.Jet.Odbc AccessODBC

DROP TABLE [TempTable]

