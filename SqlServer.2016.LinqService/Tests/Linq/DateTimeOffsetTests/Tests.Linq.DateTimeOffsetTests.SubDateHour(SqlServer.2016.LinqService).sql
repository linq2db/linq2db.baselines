BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateDiff_Big(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

