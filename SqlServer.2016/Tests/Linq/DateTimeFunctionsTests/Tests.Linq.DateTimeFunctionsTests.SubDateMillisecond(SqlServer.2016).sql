-- SqlServer.2016
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) / 100 AS BigInt) AS Float) / 10000
FROM
	[LinqDataTypes] [t]

