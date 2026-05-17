-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

