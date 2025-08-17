BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE IF EXISTS [TestIdTrun]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
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
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

TRUNCATE TABLE [TestIdTrun]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
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
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DROP TABLE [TestIdTrun]

