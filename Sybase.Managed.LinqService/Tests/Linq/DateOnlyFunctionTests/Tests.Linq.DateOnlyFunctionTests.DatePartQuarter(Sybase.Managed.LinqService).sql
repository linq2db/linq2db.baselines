BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

