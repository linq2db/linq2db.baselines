-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DropTableTest]

-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DropTableTest]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

