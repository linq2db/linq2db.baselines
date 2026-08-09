-- Sybase.Managed Sybase
SELECT
	CAST((CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(minute, 100, [t].[DateTimeValue])) AS BigInt), [t].[DateTimeValue]), DateAdd(minute, 100, [t].[DateTimeValue])) AS BigInt) * 10000 AS Float) / 10000000
FROM
	[LinqDataTypes] [t]

