BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

