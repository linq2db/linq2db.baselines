BeforeExecute
-- SqlServer.2016 (asynchronously)

SELECT
	CAST(DateAdd(year, 1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

