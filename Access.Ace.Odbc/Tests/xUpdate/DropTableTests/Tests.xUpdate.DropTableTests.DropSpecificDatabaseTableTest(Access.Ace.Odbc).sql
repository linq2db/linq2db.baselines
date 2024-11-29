BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

INSERT INTO [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Database\TestData.ODBC.mdb].[DropTableTest]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

