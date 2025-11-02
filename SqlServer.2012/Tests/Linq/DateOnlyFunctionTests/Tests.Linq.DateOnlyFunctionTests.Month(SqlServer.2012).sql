-- SqlServer.2012

SELECT
	DatePart(month, [t].[TransactionDate])
FROM
	[Transactions] [t]

