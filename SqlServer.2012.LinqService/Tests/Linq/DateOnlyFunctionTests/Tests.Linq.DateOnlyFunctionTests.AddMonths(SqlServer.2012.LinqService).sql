BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

