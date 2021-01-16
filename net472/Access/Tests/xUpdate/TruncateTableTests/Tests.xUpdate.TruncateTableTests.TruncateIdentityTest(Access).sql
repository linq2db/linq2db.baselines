BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestIdTrun]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TestIdTrun]
(
	[ID]     Int      NOT NULL IDENTITY,
	[Field1] Decimal  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access AccessOleDb

DELETE FROM [TestIdTrun]

BeforeExecute
-- Access AccessOleDb

ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] COUNTER(1, 1)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestIdTrun]

