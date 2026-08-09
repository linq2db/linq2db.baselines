-- Sybase.Managed Sybase
SELECT
	CAST((CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) * 86400) * 10000000 + CAST(DateDiff(millisecond, DateAdd(day, CAST(DateDiff(day, [t].[DateTimeValue], DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt), [t].[DateTimeValue]), DateAdd(millisecond, 2023456789, [t].[DateTimeValue])) AS BigInt) * 10000 AS Float) / 10000
FROM
	[LinqDataTypes] [t]

