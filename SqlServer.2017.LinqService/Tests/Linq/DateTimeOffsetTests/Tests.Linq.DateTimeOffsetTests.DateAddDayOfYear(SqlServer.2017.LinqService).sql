BeforeExecute
-- SqlServer.2017 (asynchronously)

SELECT
	CAST(DateAdd(dayofyear, 3, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

