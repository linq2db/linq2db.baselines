-- SqlServer.2025
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[DateTimeValue], DateAdd(hour, 100, [t].[DateTimeValue])) / 100 AS BigInt) AS Float) / 36000000000
FROM
	[LinqDataTypes] [t]

