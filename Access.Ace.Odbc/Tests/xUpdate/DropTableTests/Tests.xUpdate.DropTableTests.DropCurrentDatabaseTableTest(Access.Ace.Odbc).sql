-- Access.Ace.Odbc AccessODBC

DROP TABLE [DropTableTest]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [DropTableTest]
(
	[ID] Int NOT NULL
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [DropTableTest]
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
	[DropTableTest] [t1]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [DropTableTest]

-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[ID]
FROM
	[DropTableTest] [t1]

