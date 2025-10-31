-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(weekday, 1, [t].[TransactionDate])
FROM
	[Transactions] [t]

