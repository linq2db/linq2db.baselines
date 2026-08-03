-- SqlServer.2008.MS SqlServer.2008
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, [t].[TransactionDate], DateAdd(hour, 96, [t].[TransactionDate])) AS BIGINT) * 10000 AS BigInt) AS Float) / 864000000000
FROM
	[Transactions] [t]

