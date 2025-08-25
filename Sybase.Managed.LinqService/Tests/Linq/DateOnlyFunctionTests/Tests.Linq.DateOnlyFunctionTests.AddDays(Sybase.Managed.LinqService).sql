BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

