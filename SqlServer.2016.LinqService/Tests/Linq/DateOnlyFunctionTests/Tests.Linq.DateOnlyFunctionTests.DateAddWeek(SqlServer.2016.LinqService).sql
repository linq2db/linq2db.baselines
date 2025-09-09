BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

