-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

