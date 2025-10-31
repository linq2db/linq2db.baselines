-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DropTableTest]

-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Database\TestData].[DropTableTest]
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
	[Database\TestData].[DropTableTest] [t1]

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Database\TestData].[DropTableTest]

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[Database\TestData].[DropTableTest] [t1]

