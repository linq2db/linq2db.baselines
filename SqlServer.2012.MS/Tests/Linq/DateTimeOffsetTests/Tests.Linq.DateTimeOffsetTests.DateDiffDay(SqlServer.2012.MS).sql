-- SqlServer.2012.MS SqlServer.2012

SELECT
	DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

