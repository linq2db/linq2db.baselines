-- SqlServer.2017

SELECT
	DatePart(dayofyear, [t].[TransactionDate])
FROM
	[Transactions] [t]

