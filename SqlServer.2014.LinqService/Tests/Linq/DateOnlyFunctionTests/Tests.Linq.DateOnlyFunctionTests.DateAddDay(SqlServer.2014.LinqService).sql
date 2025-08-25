BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

