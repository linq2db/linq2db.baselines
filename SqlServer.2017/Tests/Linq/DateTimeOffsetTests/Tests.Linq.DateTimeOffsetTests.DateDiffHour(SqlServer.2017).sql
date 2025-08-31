BeforeExecute
-- SqlServer.2017

SELECT
	DateDiff_Big(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

