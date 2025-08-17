BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	CAST(DateAdd(year, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

