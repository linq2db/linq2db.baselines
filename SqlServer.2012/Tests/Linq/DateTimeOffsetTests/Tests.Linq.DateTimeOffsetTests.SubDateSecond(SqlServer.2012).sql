-- SqlServer.2012
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, [t].[TransactionDate], DateAdd(minute, 100, [t].[TransactionDate])) AS BIGINT) * 10000 AS BigInt) AS Float) / 10000000
FROM
	[Transactions] [t]

