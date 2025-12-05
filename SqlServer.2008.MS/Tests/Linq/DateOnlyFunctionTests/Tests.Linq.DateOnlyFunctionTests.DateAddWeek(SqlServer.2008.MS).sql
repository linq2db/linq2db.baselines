-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

