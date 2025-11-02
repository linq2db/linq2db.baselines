-- SqlServer.2014.MS SqlServer.2014

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

