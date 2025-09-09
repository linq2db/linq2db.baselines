BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

