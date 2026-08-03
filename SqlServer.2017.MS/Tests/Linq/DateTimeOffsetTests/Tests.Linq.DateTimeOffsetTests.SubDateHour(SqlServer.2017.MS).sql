-- SqlServer.2017.MS SqlServer.2017
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[TransactionDate], DateAdd(hour, 100, [t].[TransactionDate])) / 100 AS BigInt) AS Float) / 36000000000
FROM
	[Transactions] [t]

