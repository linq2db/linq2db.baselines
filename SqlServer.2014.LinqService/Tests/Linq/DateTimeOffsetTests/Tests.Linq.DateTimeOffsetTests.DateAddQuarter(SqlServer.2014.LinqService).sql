BeforeExecute
-- SqlServer.2014 (asynchronously)

SELECT
	CAST(DateAdd(quarter, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

