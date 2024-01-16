BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [DropTableTest]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC

INSERT INTO [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Database\TestData.ODBC.mdb].[DropTableTest]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

