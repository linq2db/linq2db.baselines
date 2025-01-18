BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	DatePart(second, DateAdd(second, 41, [t].[TransactionDate]))
FROM
	[Transactions] [t]

