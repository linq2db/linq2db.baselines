BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

