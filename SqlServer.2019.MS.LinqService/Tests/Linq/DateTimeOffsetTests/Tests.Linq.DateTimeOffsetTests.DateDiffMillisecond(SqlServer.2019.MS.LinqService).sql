BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	DateDiff_Big(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

