BeforeExecute
-- SqlCe

DROP TABLE [TestIdTrun]

BeforeExecute
-- SqlCe

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

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
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

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
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[TestIdTrun] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- SqlCe

DROP TABLE [TestIdTrun]

