BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DateAdd(month, 2, [t].[TransactionDate])
FROM
	[Transactions] [t]

