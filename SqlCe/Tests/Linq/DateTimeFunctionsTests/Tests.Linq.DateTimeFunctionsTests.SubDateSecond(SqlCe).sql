-- SqlCe
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS BIGINT) * 10000 AS BigInt) AS Float) / 10000000
FROM
	[LinqDataTypes] [t]

