-- SqlServer.2025.MS SqlServer.2025

SELECT
	DateAdd(quarter, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

