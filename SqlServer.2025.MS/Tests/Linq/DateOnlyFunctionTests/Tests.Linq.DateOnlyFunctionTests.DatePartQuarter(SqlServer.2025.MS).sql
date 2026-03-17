-- SqlServer.2025.MS SqlServer.2025

SELECT
	DatePart(quarter, [t].[TransactionDate])
FROM
	[Transactions] [t]

