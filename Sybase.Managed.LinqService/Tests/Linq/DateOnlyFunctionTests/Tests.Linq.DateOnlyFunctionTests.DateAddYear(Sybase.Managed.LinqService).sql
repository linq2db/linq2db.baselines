BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

