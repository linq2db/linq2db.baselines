BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transactions') IS NOT NULL)
	DROP TABLE [Transactions]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transactions') IS NULL)
	EXECUTE('
		CREATE TABLE [Transactions]
		(
			[TransactionId]   Int  NOT NULL,
			[TransactionDate] Date NOT NULL,

			CONSTRAINT [PK_Transactions] PRIMARY KEY CLUSTERED ([TransactionId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Transactions]
(
	[TransactionId],
	[TransactionDate]
)
SELECT 1,'2020-02-29' UNION ALL
SELECT 2,'2021-02-28' UNION ALL
SELECT 3,'2019-02-28' UNION ALL
SELECT 4,'2020-03-29' UNION ALL
SELECT 5,'2020-01-29' UNION ALL
SELECT 6,'2020-03-01' UNION ALL
SELECT 7,'2020-02-28' UNION ALL
SELECT 8,'2020-08-09' UNION ALL
SELECT 9,'2021-08-09' UNION ALL
SELECT 10,'2019-08-09' UNION ALL
SELECT 11,'2020-09-09' UNION ALL
SELECT 12,'2020-07-09' UNION ALL
SELECT 13,'2020-08-10' UNION ALL
SELECT 14,'2020-08-08'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CAST('2010-01-' + right(replicate('0',2) + cast([t].[TransactionId] as varchar(255)),2) AS Date)
FROM
	[Transactions] [t]
WHERE
	DatePart(day, CAST('2010-01-' + right(replicate('0',2) + cast([t].[TransactionId] as varchar(255)),2) AS Date)) > 0

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[TransactionId],
	[t1].[TransactionDate]
FROM
	[Transactions] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transactions') IS NOT NULL)
	DROP TABLE [Transactions]

