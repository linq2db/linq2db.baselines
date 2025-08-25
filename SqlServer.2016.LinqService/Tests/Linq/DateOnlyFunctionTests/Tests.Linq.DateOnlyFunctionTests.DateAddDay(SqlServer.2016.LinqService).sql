BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

