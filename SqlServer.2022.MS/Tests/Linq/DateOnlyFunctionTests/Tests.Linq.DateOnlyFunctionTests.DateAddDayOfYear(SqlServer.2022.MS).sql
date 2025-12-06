-- SqlServer.2022.MS SqlServer.2022

SELECT
	DateAdd(dayofyear, 3, [t].[TransactionDate])
FROM
	[Transactions] [t]

