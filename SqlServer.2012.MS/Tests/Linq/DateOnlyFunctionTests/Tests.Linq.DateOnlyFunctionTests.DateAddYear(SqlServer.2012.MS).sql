-- SqlServer.2012.MS SqlServer.2012

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

