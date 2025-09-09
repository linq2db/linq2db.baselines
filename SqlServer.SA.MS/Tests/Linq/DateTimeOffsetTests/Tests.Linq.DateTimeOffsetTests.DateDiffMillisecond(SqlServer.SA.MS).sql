BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DateDiff_Big(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

