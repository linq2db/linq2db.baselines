BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	CAST(DateAdd(month, -2, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

