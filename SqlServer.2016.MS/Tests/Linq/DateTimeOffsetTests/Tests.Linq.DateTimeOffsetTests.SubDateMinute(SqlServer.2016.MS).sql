-- SqlServer.2016.MS SqlServer.2016
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) / 100 AS BigInt) AS Float) / 600000000
FROM
	[Transactions] [t]

