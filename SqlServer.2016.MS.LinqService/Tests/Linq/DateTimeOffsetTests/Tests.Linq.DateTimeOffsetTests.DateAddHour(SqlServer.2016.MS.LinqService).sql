BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(hour, DateAdd(hour, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

