BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateDiff_Big(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

