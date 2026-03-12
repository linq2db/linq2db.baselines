-- SqlServer.2025.MS SqlServer.2025

SELECT
	CAST(DateDiff(hour, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) AS Float)
FROM
	[Transactions] [t]

