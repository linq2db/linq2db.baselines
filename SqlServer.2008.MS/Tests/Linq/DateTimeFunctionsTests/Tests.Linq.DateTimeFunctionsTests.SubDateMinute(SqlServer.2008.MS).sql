-- SqlServer.2008.MS SqlServer.2008
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS BIGINT) * 10000 AS BigInt) AS Float) / 600000000
FROM
	[LinqDataTypes] [t]

