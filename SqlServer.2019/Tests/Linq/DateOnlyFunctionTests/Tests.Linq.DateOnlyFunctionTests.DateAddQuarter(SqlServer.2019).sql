-- SqlServer.2019

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

