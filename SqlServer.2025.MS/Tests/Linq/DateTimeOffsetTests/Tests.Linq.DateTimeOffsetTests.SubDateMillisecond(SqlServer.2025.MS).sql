-- SqlServer.2025.MS SqlServer.2025
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate])) / 100 AS BigInt) AS Float) / 10000
FROM
	[Transactions] [t]

