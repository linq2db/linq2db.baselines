BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	CAST(DateAdd(year, 11, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

