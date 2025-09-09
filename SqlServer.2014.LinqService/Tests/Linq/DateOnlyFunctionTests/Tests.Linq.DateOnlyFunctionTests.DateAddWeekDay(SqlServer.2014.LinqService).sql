BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DateAdd(weekday, 1, [t].[TransactionDate])
FROM
	[Transactions] [t]

