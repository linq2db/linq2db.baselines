-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestIdTrun]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.Ace.OleDb AccessOleDb

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.Ace.OleDb AccessOleDb

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

-- Access.Ace.OleDb AccessOleDb

DELETE FROM [TestIdTrun]

-- Access.Ace.OleDb AccessOleDb

ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] COUNTER(1, 1)

-- Access.Ace.OleDb AccessOleDb

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.Ace.OleDb AccessOleDb

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TestIdTrun]

