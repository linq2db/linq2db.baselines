-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DropTableTestID]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.OleDb AccessOleDb

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DropTableTestID]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

