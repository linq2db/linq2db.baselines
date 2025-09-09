BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DROP TABLE [TestIdTrun]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DELETE FROM [TestIdTrun]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] COUNTER(1, 1)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT TOP 3
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DROP TABLE [TestIdTrun]

