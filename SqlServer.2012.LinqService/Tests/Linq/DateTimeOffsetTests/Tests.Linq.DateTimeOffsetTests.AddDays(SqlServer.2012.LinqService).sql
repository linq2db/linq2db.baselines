BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	CAST(DateAdd(day, 5, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

