-- SqlServer.2014
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BIGINT) * 10000 AS BigInt) AS Float) / 36000000000
FROM
	[LinqDataTypes] [t]

