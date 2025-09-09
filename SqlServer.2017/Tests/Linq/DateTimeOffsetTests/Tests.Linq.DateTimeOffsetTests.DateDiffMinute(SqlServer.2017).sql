BeforeExecute
-- SqlServer.2017

SELECT
	DateDiff_Big(minute, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

