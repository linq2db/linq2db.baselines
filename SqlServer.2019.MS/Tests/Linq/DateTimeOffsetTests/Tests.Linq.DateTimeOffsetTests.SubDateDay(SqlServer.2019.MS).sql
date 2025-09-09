BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	DateDiff_Big(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

