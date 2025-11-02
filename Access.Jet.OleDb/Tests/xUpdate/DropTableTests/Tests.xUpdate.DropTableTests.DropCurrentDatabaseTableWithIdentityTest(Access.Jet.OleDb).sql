-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DropTableTestID]

-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DropTableTestID]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

