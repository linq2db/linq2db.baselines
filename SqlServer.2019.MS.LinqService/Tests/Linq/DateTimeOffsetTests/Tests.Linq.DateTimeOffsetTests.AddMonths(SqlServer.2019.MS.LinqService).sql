BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	CAST(DateAdd(month, -2, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

