-- SqlServer.2014

SELECT
	CAST(DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

