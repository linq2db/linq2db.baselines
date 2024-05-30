BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Transactions]', N'U') IS NOT NULL)
	DROP TABLE [Transactions]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Transactions]', N'U') IS NULL)
	CREATE TABLE [Transactions]
	(
		[TransactionId]   Int            NOT NULL,
		[TransactionDate] DateTimeOffset NOT NULL,

		CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:09:55.1231234+00:00' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2021-02-28T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2019-02-28T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-03-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-01-29T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-03-01T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-28T17:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T18:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T16:54:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:55:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:53:55.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:54:56.1231234+00:40' AS DATETIMEOFFSET)

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
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:54:54.1231234+00:40' AS DATETIMEOFFSET)

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
SET     @TransactionId = 15
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:54:55.1241234+00:40' AS DATETIMEOFFSET)

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
SET     @TransactionId = 16
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:54:55.1221234+00:40' AS DATETIMEOFFSET)

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
SET     @TransactionId = 17
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:54:55.1231235+00:40' AS DATETIMEOFFSET)

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
SET     @TransactionId = 18
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T17:54:55.1231233+00:40' AS DATETIMEOFFSET)

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
SET     @TransactionId = 19
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2020-02-29T22:59:55.1231234+05:45' AS DATETIMEOFFSET)

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
SET     @TransactionId = 20
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2000-01-01T01:01:01.0000000+00:00' AS DATETIMEOFFSET)

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
SET     @TransactionId = 21
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2000-01-01T01:01:01.0000000+10:00' AS DATETIMEOFFSET)

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
SET     @TransactionId = 22
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2000-01-01T01:01:01.0000000-10:00' AS DATETIMEOFFSET)

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
SET     @TransactionId = 23
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2000-01-01T01:01:01.0000000+00:10' AS DATETIMEOFFSET)

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
SET     @TransactionId = 24
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2000-01-01T01:01:01.0000000-00:10' AS DATETIMEOFFSET)

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
SET     @TransactionId = 25
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2000-01-01T01:16:01.0000000+00:15' AS DATETIMEOFFSET)

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
SET     @TransactionId = 26
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = CAST('2000-01-01T01:16:01.0000000-00:15' AS DATETIMEOFFSET)

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
DECLARE @p Int -- Int32
SET     @p = 226

SELECT
	DatePart(millisecond, DateAdd(millisecond, @p, [t].[TransactionDate]))
FROM
	[Transactions] [t]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Transactions]', N'U') IS NOT NULL)
	DROP TABLE [Transactions]

