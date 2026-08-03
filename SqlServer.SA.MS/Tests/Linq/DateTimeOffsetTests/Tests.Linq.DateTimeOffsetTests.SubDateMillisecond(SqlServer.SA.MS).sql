-- SqlServer.SA.MS SqlServer.2019
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate])) / 100 AS BigInt) AS Float) / 10000
FROM
	[Transactions] [t]

