BeforeExecute
-- SqlCe

DROP TABLE [TestIdTrun]

BeforeExecute
-- SqlCe

CREATE TABLE [TestIdTrun]
(
	[ID]     Int      NOT NULL IDENTITY,
	[Field1] Decimal  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe

DELETE FROM [TestIdTrun]

BeforeExecute
-- SqlCe

ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] IDENTITY(1, 1)

BeforeExecute
-- SqlCe

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe

DROP TABLE [TestIdTrun]

