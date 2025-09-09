BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

