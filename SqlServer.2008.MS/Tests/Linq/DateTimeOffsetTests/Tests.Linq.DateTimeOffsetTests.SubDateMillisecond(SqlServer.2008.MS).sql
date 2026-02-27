-- SqlServer.2008.MS SqlServer.2008

SELECT
	CAST(DateDiff(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

