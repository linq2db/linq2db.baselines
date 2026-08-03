-- SqlServer.2005.MS SqlServer.2005
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) AS BIGINT) * 10000 AS BigInt) AS Float) / 864000000000
FROM
	[LinqDataTypes] [t]

