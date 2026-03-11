-- SqlServer.2008

SELECT
	CAST(DateDiff(minute, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

