-- SqlServer.Contained SqlServer.2019
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) / 100 AS BigInt) AS Float) / 864000000000
FROM
	[Transactions] [t]

