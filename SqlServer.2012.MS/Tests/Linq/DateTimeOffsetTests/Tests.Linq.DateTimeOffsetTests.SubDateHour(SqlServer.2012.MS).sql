-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

