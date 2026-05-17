-- SqlServer.2025

SELECT
	DateAdd(week, -1, [t].[TransactionDate])
FROM
	[Transactions] [t]

