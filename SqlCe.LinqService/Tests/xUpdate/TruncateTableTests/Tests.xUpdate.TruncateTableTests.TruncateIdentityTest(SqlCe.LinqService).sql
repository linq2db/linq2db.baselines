BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [TestIdTrun]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe (asynchronously)
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
-- SqlCe (asynchronously)

DELETE FROM [TestIdTrun]

BeforeExecute
-- SqlCe (asynchronously)

ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] IDENTITY(1, 1)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe (asynchronously)
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
-- SqlCe (asynchronously)

DROP TABLE [TestIdTrun]

