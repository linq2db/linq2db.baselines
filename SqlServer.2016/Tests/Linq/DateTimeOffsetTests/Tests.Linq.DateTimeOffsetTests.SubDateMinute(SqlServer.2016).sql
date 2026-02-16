-- SqlServer.2016

SELECT
	CAST(DateDiff(minute, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

