-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DatePart(minute, DateAdd(minute, 5, [t].[TransactionDate]))
FROM
	[Transactions] [t]

