-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TestIdTrun]

-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [TestIdTrun]
(
	[ID]     Int              NOT NULL IDENTITY,
	[Field1] Decimal(18, 10)  NOT NULL,

	CONSTRAINT [PK_TestIdTrun] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019

TRUNCATE TABLE [TestIdTrun]

-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [TestIdTrun]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE [TestIdTrun]

