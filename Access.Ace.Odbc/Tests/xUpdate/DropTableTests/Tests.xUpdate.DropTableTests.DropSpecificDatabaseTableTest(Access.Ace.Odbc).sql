-- Access.Ace.Odbc AccessODBC

DROP TABLE [DropTableTest]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [Database\TestData.ODBC.mdb].[DropTableTest]
(
	[ID]
)
VALUES
(
	123
)

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [Database\TestData.ODBC.mdb].[DropTableTest]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[Database\TestData.ODBC.mdb].[DropTableTest] [t1]

