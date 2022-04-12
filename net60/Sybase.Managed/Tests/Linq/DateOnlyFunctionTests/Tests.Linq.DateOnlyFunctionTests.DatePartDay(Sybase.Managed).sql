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
SELECT 7,'2020-02-28'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DatePart(day, [t].[TransactionDate])
FROM
	[Transactions] [t]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Transactions') IS NOT NULL)
	DROP TABLE [Transactions]

