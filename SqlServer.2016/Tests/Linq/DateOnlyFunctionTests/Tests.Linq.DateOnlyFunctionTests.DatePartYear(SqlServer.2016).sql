-- SqlServer.2016

SELECT
	DatePart(year, [t].[TransactionDate])
FROM
	[Transactions] [t]

