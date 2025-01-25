BeforeExecute
-- Sybase.Managed Sybase

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

