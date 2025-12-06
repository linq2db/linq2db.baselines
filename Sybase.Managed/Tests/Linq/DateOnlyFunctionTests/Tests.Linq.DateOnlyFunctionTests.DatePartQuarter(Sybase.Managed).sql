-- Sybase.Managed Sybase

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

