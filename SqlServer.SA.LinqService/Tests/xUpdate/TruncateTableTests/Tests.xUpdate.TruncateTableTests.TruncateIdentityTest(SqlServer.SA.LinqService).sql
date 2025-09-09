BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [TestIdTrun]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
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
-- SqlServer.SA SqlServer.2019 (asynchronously)

TRUNCATE TABLE [TestIdTrun]

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.SA SqlServer.2019 (asynchronously)
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
-- SqlServer.SA SqlServer.2019 (asynchronously)

DROP TABLE [TestIdTrun]

