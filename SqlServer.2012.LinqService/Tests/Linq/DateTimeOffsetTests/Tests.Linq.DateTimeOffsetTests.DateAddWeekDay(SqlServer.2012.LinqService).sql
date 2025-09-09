BeforeExecute
-- SqlServer.2012 (asynchronously)

SELECT
	CAST(DateAdd(weekday, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

