-- SqlServer.2016.MS SqlServer.2016

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

