-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

