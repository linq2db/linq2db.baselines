BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

