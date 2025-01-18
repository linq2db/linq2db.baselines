BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DatePart(minute, DateAdd(minute, -8, [t].[TransactionDate]))
FROM
	[Transactions] [t]

