-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
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

DROP TABLE [TempTable]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

