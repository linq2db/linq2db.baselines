-- SqlServer.2012.MS SqlServer.2012

SELECT
	DateAdd(weekday, 1, [t].[TransactionDate])
FROM
	[Transactions] [t]

