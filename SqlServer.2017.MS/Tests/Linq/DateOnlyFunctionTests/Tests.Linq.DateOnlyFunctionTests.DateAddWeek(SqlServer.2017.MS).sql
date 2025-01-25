BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

