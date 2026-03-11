-- SqlServer.2016

SELECT
	CAST(DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

