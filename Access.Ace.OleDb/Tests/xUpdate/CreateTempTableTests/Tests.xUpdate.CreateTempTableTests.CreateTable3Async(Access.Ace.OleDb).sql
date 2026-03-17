-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.OleDb AccessOleDb

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TempTable]

