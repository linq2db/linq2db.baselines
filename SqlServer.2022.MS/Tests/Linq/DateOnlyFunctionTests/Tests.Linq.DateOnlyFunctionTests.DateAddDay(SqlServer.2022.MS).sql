BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

