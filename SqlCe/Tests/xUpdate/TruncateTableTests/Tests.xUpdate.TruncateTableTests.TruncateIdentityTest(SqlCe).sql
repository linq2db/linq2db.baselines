-- SqlCe

DROP TABLE [TestIdTrun]

-- SqlCe

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY ([ID])
)

-- SqlCe

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlCe

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

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

-- SqlCe

DELETE FROM [TestIdTrun]

-- SqlCe

ALTER TABLE [TestIdTrun] ALTER COLUMN [ID] IDENTITY(1, 1)

-- SqlCe

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlCe

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

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

-- SqlCe

DROP TABLE [TestIdTrun]

