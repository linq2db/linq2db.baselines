BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DatePart(second, DateAdd(second, -35, [t].[TransactionDate]))
FROM
	[Transactions] [t]

