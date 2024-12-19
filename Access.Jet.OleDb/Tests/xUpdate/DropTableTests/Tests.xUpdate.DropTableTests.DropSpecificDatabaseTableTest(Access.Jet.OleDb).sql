BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Database\TestData].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[Database\TestData].[DropTableTest] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Database\TestData].[DropTableTest]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[ID]
FROM
	[Database\TestData].[DropTableTest] [t1]

