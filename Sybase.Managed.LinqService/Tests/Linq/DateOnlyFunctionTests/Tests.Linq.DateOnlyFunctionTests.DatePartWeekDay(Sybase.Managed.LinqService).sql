BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

