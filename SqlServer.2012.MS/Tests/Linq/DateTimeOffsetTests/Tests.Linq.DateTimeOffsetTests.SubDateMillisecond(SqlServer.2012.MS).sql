-- SqlServer.2012.MS SqlServer.2012

SELECT
	CAST(DateDiff(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

