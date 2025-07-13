BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

