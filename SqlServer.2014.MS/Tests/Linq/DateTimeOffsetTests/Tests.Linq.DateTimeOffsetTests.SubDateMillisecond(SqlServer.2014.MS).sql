-- SqlServer.2014.MS SqlServer.2014
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, [t].[TransactionDate], DateAdd(second, 1, [t].[TransactionDate])) AS BIGINT) * 10000 AS BigInt) AS Float) / 10000
FROM
	[Transactions] [t]

