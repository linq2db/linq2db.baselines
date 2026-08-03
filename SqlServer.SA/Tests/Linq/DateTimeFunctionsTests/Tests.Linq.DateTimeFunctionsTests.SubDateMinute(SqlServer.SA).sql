-- SqlServer.SA SqlServer.2019
SELECT
	CAST(CAST(DATEDIFF_BIG(nanosecond, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) / 100 AS BigInt) AS Float) / 600000000
FROM
	[LinqDataTypes] [t]

