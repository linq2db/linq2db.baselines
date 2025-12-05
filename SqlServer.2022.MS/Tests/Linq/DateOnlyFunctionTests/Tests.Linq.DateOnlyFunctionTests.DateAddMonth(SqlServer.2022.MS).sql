-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(month, 2, [t].[TransactionDate])
FROM
	[Transactions] [t]

