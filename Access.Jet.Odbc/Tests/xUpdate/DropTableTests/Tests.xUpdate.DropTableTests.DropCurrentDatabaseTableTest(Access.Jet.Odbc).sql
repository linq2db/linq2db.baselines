-- Access.Jet.Odbc AccessODBC

DROP TABLE [DropTableTest]

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_DropTableTest] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Jet.Odbc AccessODBC

INSERT INTO [DropTableTest]
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
	[DropTableTest] [t1]

-- Access.Jet.Odbc AccessODBC

DROP TABLE [DropTableTest]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

