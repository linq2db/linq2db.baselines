BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[TransactionDate]))
FROM
	[Transactions] [t]

