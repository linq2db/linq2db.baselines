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

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
VALUES
(1,CAST('2020-02-29' AS DATE)),
(2,CAST('2021-02-28' AS DATE)),
(3,CAST('2019-02-28' AS DATE)),
(4,CAST('2020-03-29' AS DATE)),
(5,CAST('2020-01-29' AS DATE)),
(6,CAST('2020-03-01' AS DATE)),
(7,CAST('2020-02-28' AS DATE)),
(8,CAST('2020-08-09' AS DATE)),
(9,CAST('2021-08-09' AS DATE)),
(10,CAST('2019-08-09' AS DATE)),
(11,CAST('2020-09-09' AS DATE)),
(12,CAST('2020-07-09' AS DATE)),
(13,CAST('2020-08-10' AS DATE)),
(14,CAST('2020-08-08' AS DATE))

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

