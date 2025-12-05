-- SqlServer.2025 SqlServer.2022

SELECT
	DatePart(week, [t].[TransactionDate])
FROM
	[Transactions] [t]

