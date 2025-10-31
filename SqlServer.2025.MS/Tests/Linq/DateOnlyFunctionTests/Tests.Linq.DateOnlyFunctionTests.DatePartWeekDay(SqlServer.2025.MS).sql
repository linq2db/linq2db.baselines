-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DatePart(weekday, [t].[TransactionDate])
FROM
	[Transactions] [t]

