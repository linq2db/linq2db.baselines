-- SqlServer.2008.MS SqlServer.2008

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[TransactionDate]))
FROM
	[Transactions] [t]

