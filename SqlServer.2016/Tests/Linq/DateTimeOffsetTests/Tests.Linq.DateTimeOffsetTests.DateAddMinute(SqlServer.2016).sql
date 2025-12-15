-- SqlServer.2016

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[TransactionDate]))
FROM
	[Transactions] [t]

