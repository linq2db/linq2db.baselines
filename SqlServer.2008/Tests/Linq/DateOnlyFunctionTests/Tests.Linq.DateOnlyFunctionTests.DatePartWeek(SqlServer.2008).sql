-- SqlServer.2008

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

