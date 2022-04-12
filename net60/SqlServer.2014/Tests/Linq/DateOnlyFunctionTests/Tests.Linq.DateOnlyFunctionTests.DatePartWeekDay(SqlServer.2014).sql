BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Transactions]', N'U') IS NOT NULL)
	DROP TABLE [Transactions]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Transactions]', N'U') IS NULL)
	CREATE TABLE [Transactions]
	(
		[TransactionId]   Int  NOT NULL,
		[TransactionDate] Date NOT NULL,

		CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(1,'2020-02-29'),
(2,'2021-02-28'),
(3,'2019-02-28'),
(4,'2020-03-29'),
(5,'2020-01-29'),
(6,'2020-03-01'),
(7,'2020-02-28')

BeforeExecute
-- SqlServer.2014

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Transactions]', N'U') IS NOT NULL)
	DROP TABLE [Transactions]

