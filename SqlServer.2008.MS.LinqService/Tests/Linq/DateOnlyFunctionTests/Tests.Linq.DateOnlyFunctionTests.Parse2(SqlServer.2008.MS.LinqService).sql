BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Transactions]', N'U') IS NOT NULL)
	DROP TABLE [Transactions]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Transactions]', N'U') IS NULL)
	CREATE TABLE [Transactions]
	(
		[TransactionId]   Int  NOT NULL,
		[TransactionDate] Date NOT NULL,

		CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-02-29T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2021-02-28T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2019-02-28T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-03-29T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-01-29T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-03-01T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-02-28T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-08-09T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2021-08-09T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2019-08-09T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-09-09T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-07-09T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-08-10T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate Date
SET     @TransactionDate = CAST('2020-08-08T00:00:00.0000000' AS DATETIME2)

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(
	@TransactionId,
	@TransactionDate
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	DatePart(day, [d].[TransactionDate]) > 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Transactions]', N'U') IS NOT NULL)
	DROP TABLE [Transactions]

