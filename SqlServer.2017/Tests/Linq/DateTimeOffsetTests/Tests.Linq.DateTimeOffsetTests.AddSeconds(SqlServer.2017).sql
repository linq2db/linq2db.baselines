-- SqlServer.2017

SELECT
	DatePart(second, DateAdd(second, -35, [t].[TransactionDate]))
FROM
	[Transactions] [t]

