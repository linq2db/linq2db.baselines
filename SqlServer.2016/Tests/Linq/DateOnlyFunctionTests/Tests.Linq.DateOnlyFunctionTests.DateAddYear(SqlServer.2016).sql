-- SqlServer.2016

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

