-- SqlServer.2025.MS SqlServer.2025

SELECT
	DateDiff(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate]))
FROM
	[Transactions] [t]

