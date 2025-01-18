BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

