BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[TransactionDate]))
FROM
	[Transactions] [t]

