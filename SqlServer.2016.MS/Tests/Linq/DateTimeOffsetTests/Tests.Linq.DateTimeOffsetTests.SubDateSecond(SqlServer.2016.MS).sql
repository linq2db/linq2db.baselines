BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateDiff_Big(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

