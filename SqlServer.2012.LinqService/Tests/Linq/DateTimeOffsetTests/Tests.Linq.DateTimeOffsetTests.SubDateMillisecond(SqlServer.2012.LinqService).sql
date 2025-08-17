BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DateDiff(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

