BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

