-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate]))
FROM
	[Transactions] [t]

