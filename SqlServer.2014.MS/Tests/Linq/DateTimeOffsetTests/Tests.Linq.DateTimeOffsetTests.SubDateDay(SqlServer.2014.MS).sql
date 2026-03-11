-- SqlServer.2014.MS SqlServer.2014

SELECT
	CAST(DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

