BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Transactions]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Transactions]', N'U') IS NULL)
	CREATE TABLE [Transactions]
	(
		[TransactionId]   Int            NOT NULL,
		[TransactionDate] DateTimeOffset NOT NULL,

		CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
	)

BeforeExecute
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 9, 55, 1231234, 0, 0, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2021, 2, 28, 17, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2019, 2, 28, 17, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 3, 29, 17, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 1, 29, 17, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 3, 1, 17, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 28, 17, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 18, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 16, 54, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 55, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 53, 55, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 56, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 54, 1231234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 15
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1241234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 16
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1221234, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 17
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231235, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 18
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231233, 0, 40, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 19
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2020, 2, 29, 22, 59, 55, 1231234, 5, 45, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 20
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2000, 1, 1, 1, 1, 1, 0, 0, 0, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 21
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2000, 1, 1, 1, 1, 1, 0, 10, 0, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 22
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2000, 1, 1, 1, 1, 1, 0, -10, 0, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 23
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2000, 1, 1, 1, 1, 1, 0, 0, 10, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 24
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2000, 1, 1, 1, 1, 1, 0, 0, -10, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 25
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2000, 1, 1, 1, 16, 1, 0, 0, 15, 7)

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
-- SqlServer.2017
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 26
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = DATETIMEOFFSETFROMPARTS(2000, 1, 1, 1, 16, 1, 0, 0, -15, 7)

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
-- SqlServer.2017

SELECT
	[t].[TransactionId]
FROM
	[Transactions] [t]
WHERE
	[t].[TransactionDate] > DateAdd(minute, 200, DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)) AND
	DateAdd(minute, 200, DATETIMEOFFSETFROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 0, 40, 7)) IS NOT NULL

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Transactions]

