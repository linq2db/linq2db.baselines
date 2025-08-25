BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

