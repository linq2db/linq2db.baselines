BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	CAST(DateAdd(month, -2, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

