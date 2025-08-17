BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

