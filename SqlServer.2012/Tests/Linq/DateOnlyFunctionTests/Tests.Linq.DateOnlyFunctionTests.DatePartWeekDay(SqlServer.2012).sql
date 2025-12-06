-- SqlServer.2012

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

