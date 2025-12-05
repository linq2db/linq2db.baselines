-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DateDiff(day, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate]))
FROM
	[Transactions] [t]

