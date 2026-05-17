-- SqlServer.2017

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

