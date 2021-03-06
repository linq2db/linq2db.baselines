﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Transactions]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

IF (OBJECT_ID(N'[Transactions]', N'U') IS NULL)
	CREATE TABLE [Transactions]
	(
		[TransactionId]   Int            NOT NULL,
		[TransactionDate] DateTimeOffset NOT NULL,

		CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(1,'2020-02-29 17:54:55.1231234 +00:40'),
(2,'2020-02-29 17:09:55.1231234 +00:00'),
(3,'2021-02-28 17:54:55.1231234 +00:40'),
(4,'2019-02-28 17:54:55.1231234 +00:40'),
(5,'2020-03-29 17:54:55.1231234 +00:40'),
(6,'2020-01-29 17:54:55.1231234 +00:40'),
(7,'2020-03-01 17:54:55.1231234 +00:40'),
(8,'2020-02-28 17:54:55.1231234 +00:40'),
(9,'2020-02-29 18:54:55.1231234 +00:40'),
(10,'2020-02-29 16:54:55.1231234 +00:40'),
(11,'2020-02-29 17:55:55.1231234 +00:40'),
(12,'2020-02-29 17:53:55.1231234 +00:40'),
(13,'2020-02-29 17:54:56.1231234 +00:40'),
(14,'2020-02-29 17:54:54.1231234 +00:40'),
(15,'2020-02-29 17:54:55.1241234 +00:40'),
(16,'2020-02-29 17:54:55.1221234 +00:40'),
(17,'2020-02-29 17:54:55.1231235 +00:40'),
(18,'2020-02-29 17:54:55.1231233 +00:40'),
(19,'2020-02-29 22:59:55.1231234 +05:45'),
(20,'2000-01-01 01:01:01.0000000 +00:00'),
(21,'2000-01-01 01:01:01.0000000 +10:00'),
(22,'2000-01-01 01:01:01.0000000 -10:00'),
(23,'2000-01-01 01:01:01.0000000 +00:10'),
(24,'2000-01-01 01:01:01.0000000 -00:10'),
(25,'2000-01-01 01:16:01.0000000 +00:15'),
(26,'2000-01-01 01:16:01.0000000 -00:15')

BeforeExecute
-- SqlServer.Contained SqlServer.2017

SELECT
	DateAdd(hour, 1, [t].[TransactionDate])
FROM
	[Transactions] [t]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [Transactions]

