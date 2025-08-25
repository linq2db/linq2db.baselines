BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DateAdd(weekday, 1, [t].[TransactionDate])
FROM
	[Transactions] [t]

