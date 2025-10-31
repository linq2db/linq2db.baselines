-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

