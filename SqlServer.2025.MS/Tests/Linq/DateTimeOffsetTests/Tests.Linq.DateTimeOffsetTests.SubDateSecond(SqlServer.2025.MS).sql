-- SqlServer.2025.MS SqlServer.2025
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) / 100 AS BigInt) AS Float) / 10000000
FROM
	[Transactions] [t]

