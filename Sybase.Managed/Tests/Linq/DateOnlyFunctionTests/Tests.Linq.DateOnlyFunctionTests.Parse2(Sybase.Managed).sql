BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[d].[TransactionDate]
FROM
	[Transactions] [d]
WHERE
	DatePart(day, [d].[TransactionDate]) > 0

