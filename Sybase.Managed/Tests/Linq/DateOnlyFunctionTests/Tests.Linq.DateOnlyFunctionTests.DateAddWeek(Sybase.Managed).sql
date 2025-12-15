-- Sybase.Managed Sybase

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

