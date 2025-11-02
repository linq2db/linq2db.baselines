-- SqlServer.2008.MS SqlServer.2008

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

