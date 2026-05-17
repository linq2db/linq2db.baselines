-- SqlServer.2025

SELECT
	DateAdd(month, -2, [t].[TransactionDate])
FROM
	[Transactions] [t]

