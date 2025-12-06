-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

