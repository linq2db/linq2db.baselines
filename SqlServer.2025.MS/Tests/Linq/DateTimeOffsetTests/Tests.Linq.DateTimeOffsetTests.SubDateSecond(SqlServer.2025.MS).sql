-- SqlServer.2025.MS SqlServer.2025

SELECT
	CAST(DateDiff(second, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

