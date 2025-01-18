BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

