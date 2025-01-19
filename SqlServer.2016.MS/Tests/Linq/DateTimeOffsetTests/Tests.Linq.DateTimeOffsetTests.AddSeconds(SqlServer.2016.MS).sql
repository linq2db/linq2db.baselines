BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	DatePart(second, DateAdd(second, -35, [t].[TransactionDate]))
FROM
	[Transactions] [t]

