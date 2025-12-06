-- SqlServer.2012

IF (OBJECT_ID(N'[TestIdTrun]', N'U') IS NOT NULL)
	DROP TABLE [TestIdTrun]

-- SqlServer.2012

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2012

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2012

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2012
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

-- SqlServer.2012

TRUNCATE TABLE [TestIdTrun]

-- SqlServer.2012

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2012

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2012
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

-- SqlServer.2012

DROP TABLE [TestIdTrun]

