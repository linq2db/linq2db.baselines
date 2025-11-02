-- Access.Jet.Odbc AccessODBC

DROP TABLE [DropTableTest]

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID] Int NOT NULL
)

-- Access.Jet.Odbc AccessODBC

INSERT INTO [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [Database\TestData.ODBC.mdb].[DropTableTest]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

