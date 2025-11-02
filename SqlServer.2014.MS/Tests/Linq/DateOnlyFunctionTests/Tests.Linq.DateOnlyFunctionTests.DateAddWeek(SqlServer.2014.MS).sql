-- SqlServer.2014.MS SqlServer.2014

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

