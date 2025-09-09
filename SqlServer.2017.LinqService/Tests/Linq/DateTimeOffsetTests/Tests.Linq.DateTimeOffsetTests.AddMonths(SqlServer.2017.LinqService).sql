BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	CAST(DateAdd(month, -2, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

