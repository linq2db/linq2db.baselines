BeforeExecute
-- SqlServer.2022 (asynchronously)

SELECT
	DateDiff_Big(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

