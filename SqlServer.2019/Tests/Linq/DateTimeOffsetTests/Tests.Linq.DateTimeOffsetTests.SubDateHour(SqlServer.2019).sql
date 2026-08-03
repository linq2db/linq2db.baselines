-- SqlServer.2019
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) / 100 AS BigInt) AS Float) / 36000000000
FROM
	[Transactions] [t]

