-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestIdTrun]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

-- Access.Ace.Odbc AccessODBC

DELETE FROM [TestIdTrun]

-- Access.Ace.Odbc AccessODBC

ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] COUNTER(1, 1)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.Ace.Odbc AccessODBC

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.Ace.Odbc AccessODBC

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

-- Access.Ace.Odbc AccessODBC

DROP TABLE [TestIdTrun]

