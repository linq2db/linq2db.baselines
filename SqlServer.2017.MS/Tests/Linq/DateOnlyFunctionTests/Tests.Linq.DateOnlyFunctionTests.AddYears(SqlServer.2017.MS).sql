-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

