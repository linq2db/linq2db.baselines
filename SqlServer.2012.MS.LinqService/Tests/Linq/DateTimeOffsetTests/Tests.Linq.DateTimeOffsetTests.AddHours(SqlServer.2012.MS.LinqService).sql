BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DatePart(hour, DateAdd(hour, 22, [t].[TransactionDate]))
FROM
	[Transactions] [t]

