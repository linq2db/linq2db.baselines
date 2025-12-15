-- SqlServer.2017

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

