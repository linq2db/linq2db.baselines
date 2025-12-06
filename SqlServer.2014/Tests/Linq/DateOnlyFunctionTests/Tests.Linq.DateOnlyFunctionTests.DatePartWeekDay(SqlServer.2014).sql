-- SqlServer.2014

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

