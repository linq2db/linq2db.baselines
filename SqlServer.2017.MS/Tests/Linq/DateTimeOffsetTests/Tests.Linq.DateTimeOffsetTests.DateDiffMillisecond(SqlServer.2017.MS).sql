BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateDiff_Big(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

