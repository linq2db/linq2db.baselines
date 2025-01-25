BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(month, 2, [t].[TransactionDate])
FROM
	[Transactions] [t]

