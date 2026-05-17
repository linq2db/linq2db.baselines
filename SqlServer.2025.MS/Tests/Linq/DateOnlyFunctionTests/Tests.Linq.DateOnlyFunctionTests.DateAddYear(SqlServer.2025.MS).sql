-- SqlServer.2025.MS SqlServer.2025

SELECT
	DateAdd(year, 12, [t].[TransactionDate])
FROM
	[Transactions] [t]

