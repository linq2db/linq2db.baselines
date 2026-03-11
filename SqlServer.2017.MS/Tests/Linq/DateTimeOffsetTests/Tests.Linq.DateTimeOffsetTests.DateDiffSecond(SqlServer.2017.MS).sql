-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

