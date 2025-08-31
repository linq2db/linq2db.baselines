BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateDiff_Big(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

