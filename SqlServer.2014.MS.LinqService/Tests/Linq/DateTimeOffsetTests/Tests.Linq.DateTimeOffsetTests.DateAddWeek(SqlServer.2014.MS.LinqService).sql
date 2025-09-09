BeforeExecute
-- SqlServer.2014.MS SqlServer.2014 (asynchronously)

SELECT
	CAST(DateAdd(week, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

