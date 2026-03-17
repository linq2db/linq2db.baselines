-- SqlServer.2014

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

