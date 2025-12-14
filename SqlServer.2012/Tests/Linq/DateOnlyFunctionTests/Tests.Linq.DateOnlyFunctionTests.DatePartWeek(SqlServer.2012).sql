-- SqlServer.2012

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

