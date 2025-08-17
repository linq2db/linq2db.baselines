BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

