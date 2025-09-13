BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

INSERT INTO [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Database\TestData.ODBC.mdb].[DropTableTest]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

