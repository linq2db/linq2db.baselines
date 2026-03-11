-- SqlServer.2017.MS SqlServer.2017

SELECT
	CAST(DateDiff(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

