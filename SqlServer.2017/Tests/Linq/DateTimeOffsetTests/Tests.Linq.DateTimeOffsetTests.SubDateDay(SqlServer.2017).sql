BeforeExecute
-- SqlServer.2017

SELECT
	DateDiff_Big(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

