-- SqlServer.2012

SELECT
	CAST(DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

