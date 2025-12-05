-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DropTableTest]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.OleDb AccessOleDb

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DropTableTest]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

