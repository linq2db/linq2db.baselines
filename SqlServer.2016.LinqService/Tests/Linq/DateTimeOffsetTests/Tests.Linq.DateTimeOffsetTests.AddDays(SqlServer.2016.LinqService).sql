BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(day, 5, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

