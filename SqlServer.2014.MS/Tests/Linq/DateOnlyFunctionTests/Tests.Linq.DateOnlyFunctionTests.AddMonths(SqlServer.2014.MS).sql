-- SqlServer.2014.MS SqlServer.2014

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

