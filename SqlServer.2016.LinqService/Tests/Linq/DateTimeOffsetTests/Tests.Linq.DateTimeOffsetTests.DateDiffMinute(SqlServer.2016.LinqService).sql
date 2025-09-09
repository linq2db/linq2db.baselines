BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateDiff(minute, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

