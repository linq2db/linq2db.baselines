BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[TransactionDate]))
FROM
	[Transactions] [t]

