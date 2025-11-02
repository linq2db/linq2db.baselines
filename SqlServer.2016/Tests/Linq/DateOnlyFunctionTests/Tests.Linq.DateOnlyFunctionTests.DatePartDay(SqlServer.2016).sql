-- SqlServer.2016

SELECT
	DatePart(day, [t].[TransactionDate])
FROM
	[Transactions] [t]

