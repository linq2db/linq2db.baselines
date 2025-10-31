-- SqlServer.2025 SqlServer.2022

SELECT
	DateAdd(day, 5, [t].[TransactionDate])
FROM
	[Transactions] [t]

