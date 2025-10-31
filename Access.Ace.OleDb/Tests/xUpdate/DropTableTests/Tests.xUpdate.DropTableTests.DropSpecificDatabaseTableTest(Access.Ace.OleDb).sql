-- Access.Ace.OleDb AccessOleDb

DROP TABLE [DropTableTest]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- Access.Ace.OleDb AccessOleDb

INSERT INTO [Database\TestData].[DropTableTest]
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
	[Database\TestData].[DropTableTest] [t1]

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Database\TestData].[DropTableTest]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[Database\TestData].[DropTableTest] [t1]

