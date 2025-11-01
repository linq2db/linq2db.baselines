-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

