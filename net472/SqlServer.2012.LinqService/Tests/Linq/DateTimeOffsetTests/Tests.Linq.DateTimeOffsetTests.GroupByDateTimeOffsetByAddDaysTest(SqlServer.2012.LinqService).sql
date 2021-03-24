﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Transactions]', N'U') IS NOT NULL)
	DROP TABLE [Transactions]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Transactions]', N'U') IS NULL)
	CREATE TABLE [Transactions]
	(
		[TransactionId]   Int            NOT NULL,
		[TransactionDate] DateTimeOffset NOT NULL,

		CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
	)

BeforeExecute
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 1
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 2
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:09:55.1231234 +00:00'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 3
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2021-02-28 17:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 4
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2019-02-28 17:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 5
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-03-29 17:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 6
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-01-29 17:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 7
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-03-01 17:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 8
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-28 17:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 9
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 18:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 10
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 16:54:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 11
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:55:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 12
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:53:55.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 13
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:54:56.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 14
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:54:54.1231234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 15
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:54:55.1241234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 16
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:54:55.1221234 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 17
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:54:55.1231235 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 18
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 17:54:55.1231233 +00:40'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 19
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2020-02-29 22:59:55.1231234 +05:45'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 20
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2000-01-01 01:01:01.0000000 +00:00'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 21
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2000-01-01 01:01:01.0000000 +10:00'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 22
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2000-01-01 01:01:01.0000000 -10:00'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 23
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2000-01-01 01:01:01.0000000 +00:10'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 24
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2000-01-01 01:01:01.0000000 -00:10'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 25
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2000-01-01 01:16:01.0000000 +00:15'

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
-- SqlServer.2012
DECLARE @TransactionId Int -- Int32
SET     @TransactionId = 26
DECLARE @TransactionDate DateTimeOffset
SET     @TransactionDate = '2000-01-01 01:16:01.0000000 -00:15'

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
-- SqlServer.2012

SELECT
	[t1].[Key_1],
	Count(*)
FROM
	(
		SELECT
			DateAdd(day, -1, [selectParam].[TransactionDate]) as [Key_1]
		FROM
			[Transactions] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]
ORDER BY
	[t1].[Key_1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Transactions]', N'U') IS NOT NULL)
	DROP TABLE [Transactions]

