BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	CAST(DateAdd(week, -1, [t].[TransactionDate]) AS Date)
FROM
	[Transactions] [t]

