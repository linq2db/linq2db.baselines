-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

