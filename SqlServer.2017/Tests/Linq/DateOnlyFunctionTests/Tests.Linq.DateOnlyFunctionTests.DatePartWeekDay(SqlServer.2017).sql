-- SqlServer.2017

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

