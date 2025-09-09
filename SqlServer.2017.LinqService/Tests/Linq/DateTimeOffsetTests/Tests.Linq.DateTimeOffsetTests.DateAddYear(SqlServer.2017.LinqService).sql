BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	CAST(DateAdd(year, 11, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

