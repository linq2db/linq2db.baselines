-- SqlServer.2016.MS SqlServer.2016

SELECT
	CAST(DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

