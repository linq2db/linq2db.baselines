BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	DateAdd(month, 2, [t].[TransactionDate])
FROM
	[Transactions] [t]

